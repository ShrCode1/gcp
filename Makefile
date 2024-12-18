install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

format:
	black *.py

lint: 
	# /home/shrey/.local/bin/pylint --disable=R,C hello.py
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test
