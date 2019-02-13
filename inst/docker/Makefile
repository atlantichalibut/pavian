#
# Makefile
# fbreitwieser, 2016-10-20 11:54
#

PORT=5000

build:
	docker build -t atlantichalibut/pavian .

run:
	docker run --rm -p $(PORT):80 atlantichalibut/pavian

push:
	docker push atlantichalibut/pavian

#inspect:
#	docker run --rm -i -t --entrypoint /bin/bash -p $(PORT):80 atlantichalibut/pavian

stop:
	docker stop atlantichalibut/pavian; docker rm atlantichalibut/pavian

# vim:ft=make
#
