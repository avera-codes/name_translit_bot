FROM python:3.10-slim

# Устанавливаем gcc через apt-get
RUN apt-get update && apt-get install -y gcc

# Устанавливаем зависимости Python из requirements.txt
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

# Копируем текущую директорию в контейнер
COPY . .

# Устанавливаем переменную окружения TOKEN
ENV TOKEN='6987896318:AAE6HKLmd-uKVyo9h7_NHIhVq5wo35qzLug'

# Устанавливаем точку входа
ENTRYPOINT ["python", "bot.py"]