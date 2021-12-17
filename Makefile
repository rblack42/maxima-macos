.PHONY: all
all:
	cd ansible && \
		ansible-playbook site.yml -vv

.PHONY: venv
venv:
	echo 'layout python3' > .envrc && \
		direnv allow

.PHONY: reqs
reqs:
	pip install -U pip
	pip install -r requirements.txt

.PHONY: nb
nb:
	cd notebooks && \
		jupyter notebook
