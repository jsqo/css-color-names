
default: html css

html:
	pug --obj "{require: require}" -P -o docs src/pug/index.pug

css:
	sass src/scss/main.scss:docs/main.css --no-source-map

csswatch:
	sass --watch src/scss/main.scss:docs/main.css --no-source-map

clean:
	@rm -f docs/index.html
	@rm -f docs/main.css
