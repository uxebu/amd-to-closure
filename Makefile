CLOSURE=java -jar closure/compiler.jar
CLOSURE_AMD=${CLOSURE} --transform_amd_modules --process_common_js_modules
CLOSURE_PRETTY=${CLOSURE} --formatting PRETTY_PRINT --compilation_level WHITESPACE_ONLY

build.js:
	${CLOSURE_AMD} --common_js_entry_module a.js  *.js | ${CLOSURE_PRETTY} > ${@}

.PHONY: build.js
