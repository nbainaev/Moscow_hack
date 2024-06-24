# Moscow_hack

# Установка
```
cd Moscow_hack
python -m venv venv
pip install -r ../requirements.txt
```

# Запуск

Для запуска выполните следующие команды:
```
cd db_hider
python3 manage.py runserver
```

# Docker
Сервис будет доступен на 8000 порту
```
docker image build -t myimage .
docker run myimage
```

