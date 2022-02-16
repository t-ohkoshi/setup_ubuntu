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
	./setup-zsh
	./devitem-install

node:
	./nodenv-install
