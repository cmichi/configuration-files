#!/bin/sh

case "$1" in
	A) UMLAUT='\u00c4';;
	a) UMLAUT='\u00e4';;
	O) UMLAUT='\u00d6';;
	o) UMLAUT='\u00f6';;
	U) UMLAUT='\u00dc';;
	u) UMLAUT='\u00fc';;
	s) UMLAUT='\u00df';;
esac

printf "$UMLAUT" | iconv -f UTF8 -t UTF16 | xvkbd -utf16 -xsendevent -file -
