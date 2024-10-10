FROM spark:python3

COPY pyspark_shell.txt .

RUN pip install --target /opt/spark/python/lib/site-packages -r pyspark_shell.txt

ENV PYTHONPATH=/opt/spark/python/lib/site-packages
