FROM python:stretch

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY main.py .

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
