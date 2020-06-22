setup:
	if [ ! -d ~/.cookomatic ]; then \
		python3 -m venv ~/.cookomatic &&\
		. setenv.sh &&\
		pip install --upgrade pip &&\
		pip install -r requirements.txt; \
	fi

install:
	. setenv.sh &&\
		pip install --upgrade pip &&\
		pip install -r requirements.txt

run:
	. setenv.sh &&\
		flask run

fmt:
	. setenv.sh &&\
		black cookomatic.py config.py app/

all: setup run
