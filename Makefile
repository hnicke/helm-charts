releaseName = jitsi
chartDir = charts
repoDir = docs
repoUrl = https://hnicke.github.io/helm-charts

package:
	helm package --destination ${repoDir} ${chartDir}/*
	helm repo index --url ${repoUrl} --merge ${repoDir}/index.yaml ${repoDir}

