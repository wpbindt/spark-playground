FROM python:3.12

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY entrypoint.py .
ENTRYPOINT ["python", "-i", "entrypoint.py"]

WORKDIR /srv