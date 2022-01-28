all:
	./minimum
	./chorome-install
	./docker-install
	./vscode-install

minimum:
	./minimum

chorome:
	./chorome-install

vscode:
	./vscode-install

docker:
	./docker-install

developer:
	./setupzsh
	./devitem-install

node:
	./nodenv-install
