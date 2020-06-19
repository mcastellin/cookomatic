setup:
	if [ ! -d ~/.cookomatic ]; then \
		python3 -m venv ~/.cookomatic &&\
		source ~/.cookomatic/bin/activate &&\
		pip install --upgrade pip &&\
		pip install -r requirements.txt; \
	fi

install:
	source ~/.cookomatic/bin/activate &&\
		pip install --upgrade pip &&\
		pip install -r requirements.txt

run:
	source ~/.cookomatic/bin/activate &&\
		python app.py

all: setup run
