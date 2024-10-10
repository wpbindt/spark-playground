image:
	docker build -t main .
shell-image:
	docker build -t pyspark -f pyspark_shell.dockerfile .
shell: shell-image
	docker run -it pyspark /opt/spark/bin/pyspark
