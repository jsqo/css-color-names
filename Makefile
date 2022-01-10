
default: html css

html:
	pug --obj "{require: require}" -P -o docs src/pug/index.pug

htmlwatch:
	pug --obj "{require: require}" -P -o docs src/pug/index.pug --watch

css:
	sass src/scss/main.scss:docs/main.css --no-source-map

csswatch:
	sass --watch src/scss/main.scss:docs/main.css --no-source-map

tailwind:
	npx tailwindcss -i ./src/css/main.css -o ./docs/tailwind.css --watch

clean:
	@rm -f docs/index.html
	@rm -f docs/main.css
