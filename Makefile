default: image

all: image

image:
	docker build . \
	-f Dockerfile \
	--build-arg BUILDER_IMAGE=python:3.8-slim \
	--build-arg FASTJET_VERSION=3.3.4 \
	--build-arg LHAPDF_VERSION=6.3.0 \
	--build-arg PYTHIA_VERSION=8306 \
	--build-arg MG_VERSION=3.3.1 \
	-t rotiyan/madgraph5-amc-nlo:latest \
	-t rotiyan/madgraph5-amc-nlo:3.3.1 \
	-t rotiyan/madgraph5-amc-nlo:3.3.1-python3 \
	--compress

test:
	docker build . \
	-f Dockerfile \
	--build-arg BUILDER_IMAGE=python:3.8-slim \
	--build-arg FASTJET_VERSION=3.3.4 \
	--build-arg LHAPDF_VERSION=6.3.0 \
	--build-arg PYTHIA_VERSION=8306 \
	--build-arg MG_VERSION=3.3.1 \
	-t rotiyan/madgraph5-amc-nlo:debug-local
