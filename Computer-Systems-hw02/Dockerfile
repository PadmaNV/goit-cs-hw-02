FROM python
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt

    # Копіюємо всі файли з поточної директорії у контейнер
COPY . /app/

# Запуск FastAPI застосунку
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]



