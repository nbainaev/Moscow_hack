FROM ubuntu:latest

WORKDIR /app
COPY requirements.txt ./
RUN pip install --upgrade pip && pip install gunicorn && pip install -r requirements.txt
COPY . .

EXPOSE 8000

CMD [ "python", "manage.py", "runserver" ]
