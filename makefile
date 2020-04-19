all: 
	touch README.md
	echo "# ASSIGNMENT" >> README.md 
	echo "Make was run at:" $$(date -u)  >> README.md
	echo "No. of lines in guessinggame is $$(wc -l guessinggame.sh| sed 's/[^0-9]*//g') " >> README.md
 

