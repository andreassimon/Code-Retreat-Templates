docker-test:
	docker run --rm --tty --interactive \
		--volume "`pwd`":"`pwd`" --workdir "`pwd`" \
		ndrssmn/haskell bash

docker-package-list:
	docker run --rm --tty --interactive \
		--volume "`pwd`":"`pwd`" --workdir "`pwd`" \
		ndrssmn/haskell make package-list

package-list:
	cabal update && cabal configure && cabal test

ndrssmn/haskell:
	docker build --tag ndrssmn/haskell:latest .docker
