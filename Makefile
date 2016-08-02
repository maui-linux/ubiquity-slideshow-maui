# Makefile for ubiquity-slideshow-maui

SOURCE=.
BUILD=$(SOURCE)/build
SOURCESLIDES=$(SOURCE)/slideshows

all: clean build_netrunner translations

build_init:
	mkdir -p $(BUILD)

build_netrunner: build_init
	cp -rL $(SOURCESLIDES)/maui $(BUILD)

translations:
	./generate-local-slides.sh maui

.PHONY : clean

clean:
	-rm -rf $(BUILD)
