LUA=lua
LUA53=lua5.3
LUAC53=luac5.3
LUA54=lua5.4
LUAC54=luac5.4
LUACHECK=luacheck

LIBS=Polo.lua
VENDOR=json.lua url.lua

source:=$(wildcard source/*.lua source/include/*.lua)
libs:=$(foreach lib, $(LIBS), ../common/libs/$(lib))
vendor:=$(foreach lib, $(VENDOR), ../common/vendor/$(lib))
tests:=$(wildcard tests/Test*.lua)

all: lint test

lint: $(source) $(libs)
	$(LUACHECK) $?

test: $(source) $(libs) $(tests)
	true $(foreach test, $(tests), && $(LUA) $(test) -v)

.PHONY: clean
clean:
	rm -f build/ReaSpeech-5.3.luac build/ReaSpeech-5.4.luac build/ReaSpeechBundle.lua TAGS

