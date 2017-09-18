all: linux windows darwin
	
linux:
	CGO_ENABLED=0 GOOS=linux go build -o bin/apache2conform_linux
darwin:
	CGO_ENABLED=0 GOOS=darwin go build -o bin/apache2conform_darwin
windows:
	CGO_ENABLED=0 GOOS=windows go build -o bin/apache2conform_windows
