test:
	bin/lein test

docker-test:
	docker run --rm -v "$(pwd)":/usr/src/myapp -w /usr/src/myapp java:7 bin/lein test
