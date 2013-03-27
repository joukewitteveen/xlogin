.PHONY: install

install:
	install -d ${DESTDIR}/usr/bin
	install -m755 x-daemon ${DESTDIR}/usr/bin/
	install -d ${DESTDIR}/usr/lib/systemd/{system,user}
	install -m644 {x@,xlogin@}.service ${DESTDIR}/usr/lib/systemd/system/
	install -m644 xinit.{service,target} ${DESTDIR}/usr/lib/systemd/user/
