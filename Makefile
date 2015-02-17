SRC = $(wildcard lib/*.js)
DEST = $(SRC:lib/%.js=build/%.js)

build: $(DEST)
build/%.js: lib/%.js
	mkdir -p $(@D)
	./node_modules/.bin/babel -L all $< -o $@

clean:
	rm -rf build
