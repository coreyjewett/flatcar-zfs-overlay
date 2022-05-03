TAG = dev:latest
FLATCAR_VERSION = 3200.0.0
OVERLAY_DIR = /var/lib/portage/zfs-overlay

zfs.raw: container
	docker run --rm -v $(PWD):/out $(TAG)

.PHONY: container
container:
	docker build -t $(TAG) --build-arg FLATCAR_VERSION=$(FLATCAR_VERSION) $(TARGET) .


base: TARGET=--target base
base: container
