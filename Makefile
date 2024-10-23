image_name := erp
image_version := test
full := $(image_name):$(image_version)

docker:
	docker build -t $(full) .

export:
# python3 -m http.server 8000
# ngrok http 8000
# wget http://<ngrok-url>:8000/erp.tar
	docker save -o $(CURDIR)/$(image_name).tar $(full)

import:
	docker load -i $(image_name).tar