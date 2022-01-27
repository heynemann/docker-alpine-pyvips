build: build-310 build-311 build-39 build-38 build-37

build-311:
	@docker build \
		-t alpine-pyvips:3.11 \
		-t alpine-pyvips:3.11.0a3 \
		--build-arg PYTHON_VERSION=3.11.0a4 \
		.
	
build-310:
	@docker build \
		-t alpine-pyvips:latest \
		-t alpine-pyvips:3.10 \
		-t alpine-pyvips:3.10.1 \
		--build-arg PYTHON_VERSION=3.10.1 \
		.

build-39:
	@docker build \
		-t alpine-pyvips:3.9 \
		-t alpine-pyvips:3.9.9 \
		--build-arg PYTHON_VERSION=3.9.9 \
		.

build-38:
	@docker build \
		-t alpine-pyvips:3.8 \
		-t alpine-pyvips:3.8.12 \
		--build-arg PYTHON_VERSION=3.8.12 \
		.

build-37:
	@docker build \
		-t alpine-pyvips:3.7 \
		-t alpine-pyvips:3.7.12 \
		--build-arg PYTHON_VERSION=3.7.12 \
		.
