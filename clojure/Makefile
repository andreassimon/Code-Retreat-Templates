test:
	bin/lein test

docker-test:
	docker run --rm --volume "`pwd`":"`pwd`" --workdir "`pwd`" java:7 bin/lein test

docker-test-start:
	docker start --attach clojure
