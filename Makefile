SHELL := bash

BASH_FROM_ENV = /usr/bin/env bash
install = install -D --mode=$(1) <(sed -e "s|@bash@|$(BASH_FROM_ENV)|g" $(2)) $(DESTDIR)$(3)/$(2:.in=)

.PHONY: install
install:
	$(call install,755,x-daemon.in,/usr/bin)
	$(call install,644,x@.service,/usr/lib/systemd/system)
	$(call install,644,xlogin@.service.in,/usr/lib/systemd/system)
	$(call install,755,25-xlogin.sh.in,/etc/X11/xinit/xinitrc.d)
