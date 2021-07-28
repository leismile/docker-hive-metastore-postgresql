DOCKER_NETWORK = docker-hadoop_default
ENV_FILE = hadoop-hive.env
current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t leismile/hive-metastore-postgresql:$(current_branch) ./

tag-dockerhub:
	docker tag registry.cn-zhangjiakou.aliyuncs.com/service-stack/hive-metastore-postgresql:$(current_branch) leismile/hive-metastore-postgresql:$(current_branch) 

tag-aliyun:
	docker tag leismile/hive-metastore-postgresql:$(current_branch) registry.cn-zhangjiakou.aliyuncs.com/service-stack/hive-metastore-postgresql:$(current_branch)

pull-dockerhub:
	docker pull leismile/hive-metastore-postgresql:$(current_branch)

pull-aliyun:
	docker pull registry.cn-zhangjiakou.aliyuncs.com/service-stack/hive-metastore-postgresql:$(current_branch)

push-dockerhub:
	docker push leismile/hive-metastore-postgresql:$(current_branch)

push-aliyun:
	docker push registry.cn-zhangjiakou.aliyuncs.com/service-stack/hive-metastore-postgresql:$(current_branch)