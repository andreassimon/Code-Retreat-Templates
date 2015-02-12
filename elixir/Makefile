actors:
	docker run --rm --tty --interactive \
		--volume `pwd`:`pwd` \
		--workdir `pwd` \
		ndrssmn/elixir \
		actors.ex

test:
	docker run --rm --tty --interactive \
		--volume `pwd`:`pwd` \
		--workdir `pwd` \
		ndrssmn/elixir \
		assertion_test.exs

iex:
	docker run --rm --tty --interactive --entrypoint "iex" ndrssmn/elixir:latest

docker-image:
	docker build --tag ndrssmn/elixir:latest .docker
