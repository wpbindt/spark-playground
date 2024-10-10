.PHONY: image
image:
	docker build -t main .

.PHONY: driver
driver: image
	docker run -it --network spark_network main python -i entrypoint.py
