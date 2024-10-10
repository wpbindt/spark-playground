from pyspark.sql import SparkSession

spark = SparkSession.builder.remote('sc://spark-driver:15002').getOrCreate()
