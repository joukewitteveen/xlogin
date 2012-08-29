.PHONY: install

install:
	install -d ${DESTDIR}/usr/bin
	install -m755 x-daemon ${DESTDIR}/usr/bin/
	install -d ${DESTDIR}/usr/lib/systemd/system
	install -m644 *.service ${DESTDIR}/usr/lib/systemd/system/
