test:
	docker run --rm --tty --interactive \
		--volume `pwd`:`pwd` \
		--workdir `pwd` \
		ndrssmn/elixir \
		elixir assertion_test.exs

iex:
	docker run --rm --tty --interactive ndrssmn/elixir:latest iex

docker-image:
	docker build --no-cache --tag ndrssmn/elixir:latest .docker
