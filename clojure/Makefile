test:
	bin/lein test

docker-test:
	docker run --rm \
		--volume "`pwd`/.lein":"/root/.lein" \
		--volume "`pwd`/.m2":"/root/.m2" \
		--volume "`pwd`":"`pwd`" --workdir "`pwd`" \
		--env LEIN_ROOT=yes \
		java:7 \
		bin/lein test
