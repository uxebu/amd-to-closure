CLOSURE=java -jar closure/compiler.jar
CLOSURE_AMD=${CLOSURE} \
  --transform_amd_modules \
  --process_common_js_modules \
  --common_js_module_path_prefix src \
  --output_wrapper '(function(){%output%}());'
CLOSURE_FINALIZE=${CLOSURE}
CLOSURE_PRETTY=${CLOSURE} --formatting PRETTY_PRINT --compilation_level WHITESPACE_ONLY

all: build.js min.js

build.js: src/*.js
	${CLOSURE_AMD} --common_js_entry_module a.js src/*.js | ${CLOSURE_PRETTY} > ${@}

min.js: src/*.js
	${CLOSURE_AMD} --common_js_entry_module a.js src/*.js | ${CLOSURE} > ${@}

clean:
	rm min.js build.js
