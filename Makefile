all: shwa.db

%.db: %.txt
	ibus-table-createdb -s $< -n $@

install:
	cp *.db /usr/share/ibus-table/tables/
	cp *.svg /usr/share/ibus-table/icons/

clean:
	rm *.db

.PHONY: all install clean
