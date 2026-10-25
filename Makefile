help:
	@echo 'Makefile                                                           '
	@echo '-------------------------------------------------------------------'
	@echo '                                                                   '
	@echo '  server                Serve files from memory to development mode'
	@echo '  publish               Build all files to public folder           '
	@echo '  sass                  Watch sass files                           '

server:
	#@hugo server -wDs . -d dev
	@hugo server -D

build:
	@rm -rf public/*
	@hugo -s .
