install:
	@python setup.py sdist
	@pip install dist/clara*.tar.gz

uninstall:
	@pip uninstall clara

reinstall:
	make uninstall
	make install

build:
	@python setup.py build

clean:
	find . \( -name \*.pyc -o -name \*~ -o -name \*.so \) -exec rm -fv {} \;
	@rm -rvf build/ dist/
