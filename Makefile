releaseName = jitsi

template:
	helm template jitsi-meet | less

install:
	helm upgrade \
		--install \
		--namespace ${releaseName} \
		${releaseName} jitsi-meet

uninstall:
	helm delete \
		--purge \
		${releaseName} || true

reinstall: uninstall
	${MAKE} install

