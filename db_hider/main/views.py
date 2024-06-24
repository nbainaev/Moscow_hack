import math
import os

from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.decorators import login_required
from django.conf import settings
from matplotlib.figure import Figure
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas

from main import model_for_website, sql2erd_cli, db_tools
   
def plot_view(request):
    # Создаем фигуру matplotlib
    fig = Figure()
    ax = fig.add_subplot(111)
    x = [i/100.0 for i in range(100)]
    y = [math.sin(xi) for xi in x]
    ax.plot(x, y)

    # Преобразуем фигуру в изображение PNG
    canvas = FigureCanvas(fig)
    response = HttpResponse(content_type='image/png')
    canvas.print_png(response)

    return response

@login_required
def upload(request):
    if request.method == 'POST' and request.FILES['file']:
        uploaded_file = request.FILES['file']
        file_path = os.path.join(settings.STATIC_ROOT, uploaded_file.name)
        
        with open(file_path, 'wb') as file:
            for chunk in uploaded_file.chunks():
                file.write(chunk)

        headers = db_tools.main(file_path)
        data_classified, labels = model_for_website.main(headers)
        sql2erd_cli.main(file_path)
        
        context = {
            'file_path': file_path,
            'word_list': data_classified
        }
        return render(request, 'analyze.html', context)
    
    return render(request, 'system.html')

def home(request):
    count = User.objects.count()

    return render(request, 'home.html', {
        'count': count
    })

def signup(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')

    else:
        form = UserCreationForm()

    return render(request, 'registration/signup.html', {
        'form': form
    })

@login_required
def system(request):
    return render(request, 'system.html')
