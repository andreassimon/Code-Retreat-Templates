test:
	docker run --rm --tty --interactive \
		--volume `pwd`:`pwd` \
		--workdir `pwd` \
		ndrssmn/php5 \
		bin/phpunit tests

setup:
	docker run --rm \
		--volume `pwd`:`pwd` \
		--workdir `pwd` \
		ndrssmn/php5 \
		composer install

update:
	docker run --rm \
		--volume `pwd`:`pwd` \
		--workdir `pwd` \
		ndrssmn/php5 \
		composer update

selenium:
	java -jar selenium-webdriver/default.jar

docker-image:
	docker build --no-cache --tag ndrssmn/php5:latest .docker
