releaseName = jitsi

template:
	helm template . | less

install:
	helm upgrade \
		--install \
		--namespace ${releaseName} \
		${releaseName} .

uninstall:
	helm delete \
		--purge \
		${releaseName} || true

reinstall: uninstall
	${MAKE} install

package:
	${MAKE} -C ../../ package
