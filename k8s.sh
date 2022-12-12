#lista as imagens do docker
nu registry list-images nu-<service>
nu registry list-images nu-shore


# deploy tag
nu-mx k8s deploy s0 moon fea9500fea493f06e24e2051b6566ead519ee654915019ec23c7db21cefba7d6
nu on-shards run -- k8s deploy % <prototype> <service> <sha>