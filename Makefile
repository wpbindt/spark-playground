IMAGE_NAME:=driver

.PHONY: image
image:
	docker build -t $(IMAGE_NAME) .

.PHONY: driver
driver: image
	docker run -it --network spark_network $(IMAGE_NAME)

.PHONY: mypy
mypy:
	docker run -v $(CURDIR):/srv -it --rm --entrypoint='' $(IMAGE_NAME) mypy /srv
