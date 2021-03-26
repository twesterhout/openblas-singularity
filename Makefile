alpine-openblas.sif: Singularity
	SINGULARITY_CACHEDIR=/scratch/twesterhout/singularity-cache \
	TMPDIR=/scratch/twesterhout/tmp \
	singularity build --force --fakeroot alpine-openblas.sif Singularity

.PHONY: upload
upload: alpine-openblas.sif
	singularity push -U alpine-openblas.sif library://twesterhout/default/alpine-openblas:latest
