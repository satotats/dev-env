mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

service_name = 
container_name = 
sn = $(service_name)
cn = $(container_name)

cmd =
c = $(cmd)

exec:
	docker exec -it $(cn) bash

run:
	docker-compose run --rm $(sn) $(sn) $(c)

gradle:
	make run sn=gradle c=$(c)