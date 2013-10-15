.PHONY: install

install:
	install -d ${DESTDIR}/etc/X11/xinit/xinitrc.d
	install -m755 25-xlogin ${DESTDIR}/etc/X11/xinit/xinitrc.d/
	install -d ${DESTDIR}/usr/bin
	install -m755 x-daemon ${DESTDIR}/usr/bin/
	install -d ${DESTDIR}/usr/lib/systemd/system
	install -m644 {x@,xlogin@}.service ${DESTDIR}/usr/lib/systemd/system/
