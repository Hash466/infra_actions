FROM python:3.8
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY infra_project/. .
CMD python manage.py runserver 0:5000