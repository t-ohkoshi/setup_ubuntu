all:
	./minimum
	./choromeinstall
	./dockerinstall
	./vscodeinstall

minimum:
	./minimum

chorome:
	./choromeinstall

vscode:
	./vscodeinstall

docker:
	./dockerinstall

developer:
	./setupzsh
	./deviteminstall

node:
	./nodenvinstall
