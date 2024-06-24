# Moscow_hack

# Установка
```
cd Moscow_hack
python -m venv venv
pip install -r ../requirements.txt
```
Веса для модели необходимо положить в папку ```main/model_config```. Для этого их необходимо скачать по ссылке: https://drive.google.com/drive/folders/151a8y3fqAYLlJhmCiOZTwjS0d73RIB46?usp=sharing

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

