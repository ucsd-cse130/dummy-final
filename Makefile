#####################################################################################################
STACK=stack --allow-different-user
BUILD_OPTS=--ghc-options -O0 
TEST=doctest
#####################################################################################################

build:
	$(STACK) build $(BUILD_OPTS)

cont:
	$(STACK) build $(BUILD_OPTS) --file-watch

test: 
	$(TEST) src/*.hs 

ghci:
	$(STACK) exec -- ghci -XOverloadedStrings

clean: 
	$(STACK) clean

distclean: clean 
	rm -rf .stack-work 

tags:
	hasktags -x -c src/

turnin:
	git commit -a -m "turnin"
	git push origin master

