image:
	docker build -t pyspark .
shell:
	docker run -it pyspark /opt/spark/bin/pyspark
