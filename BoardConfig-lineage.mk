BUILD_BROKEN_DUP_RULES := true

# Kernel
TARGET_KERNEL_DTBO_PREFIX := dts/
TARGET_KERNEL_DTBO := google/dtbo.img
TARGET_KERNEL_DTB := \
	google/zuma-a0-foplp.dtb \
	google/zuma-a0-ipop.dtb \
	google/zuma-b0-foplp.dtb \
	google/zuma-b0-ipop.dtb

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat device/google/shusky/vendor_dlkm.modules.load))
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(foreach m,$(BOARD_VENDOR_KERNEL_MODULES_LOAD_RAW),$(notdir $(m)))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat device/google/shusky/vendor_kernel_boot.modules.load))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(foreach m,$(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD_RAW),$(notdir $(m)))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)
