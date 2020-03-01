

# push disabled as this is supposed to be build on docker hub
# .PHONY: push
# push:
# 	docker-compose push

.PHONY: pull
pull:
	docker-compose pull --parallel

.PHONY: build
build:
	docker-compose build --force-rm --pull

.PHONY: rebuild
rebuild:
	docker-compose build --force-rm --pull --no-cache