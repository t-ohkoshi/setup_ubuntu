all:
	./minimum
	./app-install/chorome-install
	./app-install/docker-install
	./app-install/vscode-install

minimum:
	./minimum

developer:
	./setup-zsh
	./devitem-install

chorome:
	./app-install/chorome-install

vscode:
	./app-install/vscode-install

docker:
	./app-install/docker-install

node:
	./app-install/nodenv-install
