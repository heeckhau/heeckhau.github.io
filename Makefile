all: build

clean:
	rm -rf _build

build: 
	python -m urubu build
	touch _build/.nojekyll

serve:
	python -m urubu serve

publish: clean
	./_publish.sh	

install:
	sudo pip install urubu 
