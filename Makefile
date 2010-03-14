# Makefile for GeoApt - builds the UI and resource files
# Copyright (C) 2010 Gary Sherman
# Licensed under the terms of GNU GPL 2

VERSION = 0.1.2
#
# Build UI files and resources
UISOURCES = mainwindow_ui.py resources.py dlgAddThemeFolder_ui.py dlgAddTheme_ui.py
SOURCES = GeoApt.py \
	add_theme.py \
	add_theme_folder.py \
	theme.py \
	theme_database.py \
	theme_tree.py \
	run.sh \
	run.cmd \
	README

all: $(UISOURCES)

clean:
	rm -f $(UISOURCES)
	rm -f *.pyc
	rm -f *~

%_ui.py : %.ui
	pyuic4 -o $@ $<

resources.py: resources.qrc
	pyrcc4 -o resources.py resources.qrc

dist: all
	rm -f geoapt_$(VERSION).zip
	rm -rf ./geoapt_$(VERSION)
	mkdir -p geoapt_$(VERSION)
	cp $(SOURCES) geoapt_$(VERSION)
	cp $(UISOURCES) geoapt_$(VERSION)
	zip -9v geoapt_$(VERSION).zip geoapt_$(VERSION)/* 

