image_name := erp
image_version := test
full := $(image_name):$(image_version)

docker:
	docker build -t $(full) .

export:
	docker save -o $(CURDIR)/$(image_name).tar $(full)

import:
	docker load -i $(image_name).tar