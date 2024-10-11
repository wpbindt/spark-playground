.PHONY: image
image:
	docker build -t driver .

.PHONY: driver
driver: image
	docker run -it --network spark_network driver
