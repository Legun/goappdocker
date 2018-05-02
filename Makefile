all: build

build:
	@docker build --tag=threew82/mygolangapp ./MyApps

release: build
	@docker build --tag=threew82/mygolangapp:$(shell cat VERSION) ./MyApps
