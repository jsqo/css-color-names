
default: html

html:
	pug --obj "{require: require}" -P -o docs src/pug/index.pug

clean:
	@rm -f docs/index.html
