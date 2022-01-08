all: README.md

README.md:
	touch README.md
	echo "Guessing Game for The Unix Workbench course final project" >> README.md
	LANG=en_us_88591; date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md