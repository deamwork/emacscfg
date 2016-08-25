### Makefile --- 

## Author: shell@debian.debian
## Version: $Id: Makefile,v 0.0 2010/01/20 17:13:26 shell Exp $
## Keywords: 
## X-URL: 

all: update install

update: clean build

build:
	emacs -q --no-splash -batch --eval '(byte-recompile-directory "plugins" 0)'
	emacs -q --no-splash -L plugins/ -batch --eval '(byte-recompile-directory "lisp" 0)'

clean:
	find . -name '*.elc' -delete

install-venv:
	virtualenv pyenv
	pyenv/bin/pip --upgrade rope
	pyenv/bin/pip --upgrade jedi
	pyenv/bin/pip --upgrade importmagic
	pyenv/bin/pip --upgrade autopep8
	pyenv/bin/pip --upgrade yapf

clean-venv:
	rm -rf pyenv

install:
	ln -sf $(shell pwd)/lisp/emacs.el ~/.emacs
	ln -sf $(shell pwd)/lisp/emacs.elc ~/.emacs.elc

### Makefile ends here
