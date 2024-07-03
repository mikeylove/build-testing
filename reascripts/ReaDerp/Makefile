LUA53=lua5.3
LUAC53=luac5.3
LUA54=lua5.4
LUAC54=luac5.4
LUACHECK=luacheck

tests:=$(wildcard tests/Test*.lua)

all: lint test

lint: $(source) $(libs)
	$(LUACHECK) $?

test: $(source) $(libs) $(tests)
	true $(foreach test, $(tests), && $(LUA53) $(test) -v)
	true $(foreach test, $(tests), && $(LUA54) $(test) -v)

.PHONY: clean
clean:
	rm -f build/ReaSpeech-5.3.luac build/ReaSpeech-5.4.luac build/ReaSpeechBundle.lua TAGS

