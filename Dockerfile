FROM spark:python3

COPY requirements.txt .

RUN pip install --target /opt/spark/python/lib/site-packages -r requirements.txt

ENV PYTHONPATH=/opt/spark/python/lib/site-packages
