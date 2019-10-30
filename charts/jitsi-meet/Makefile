releaseName = jitsi
chartDir = jitsi-meet
repoUrl = https://hnicke.github.io/jitsi-meet-chart

template:
	helm template ${chartDir} | less

install:
	helm upgrade \
		--install \
		--namespace ${releaseName} \
		${releaseName} ${chartDir}

uninstall:
	helm delete \
		--purge \
		${releaseName} || true

reinstall: uninstall
	${MAKE} install
