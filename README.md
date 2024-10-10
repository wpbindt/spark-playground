# Spark playground
By running
```bash
docker compose up -d
```
and
```bash
make driver
```
you will enter a Python interpreter session with a variable `spark: SparkSession` connecting to the driver of a Spark
cluster with three workers, running locally.
