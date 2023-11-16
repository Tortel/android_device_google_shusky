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

# TARGET_KERNEL_EXT_MODULES := \
# 	bms/misc \
# 	trusty \
# 	soc/gs \
# 	amplifiers/audiometrics \
# 	amplifiers/cs35l41 \
# 	amplifiers/cs40l26 \
# 	aoc \
# 	aoc/alsa \
# 	aoc/usb \
# 	bluetooth/broadcom \
# 	bms \
# 	display/samsung/panel \
# 	display/samsung \
# 	edgetpu/rio/drivers/edgetpu \
# 	gps/broadcom/bcm47765 \
# 	gpu/mali_kbase \
# 	gpu/mali_pixel \
# 	gxp/zuma \
# 	hdcp/samsung \
# 	lwis \
# 	nfc \
# 	power/reset \
# 	touch/common \
# 	touch/fts/ftm5 \
# 	touch/goodix \
# 	touch/sec \
# 	uwb \
# 	video/gchips \
# 	wlan/bcm4398 \
# 	wlan/wlan_ptracker

TARGET_KERNEL_EXT_MODULES := \
	google-modules/bms/misc \
	google-modules/trusty \
	google-modules/soc/gs \
	google-modules/amplifiers/audiometrics \
	google-modules/amplifiers/cs35l41 \
	google-modules/amplifiers/cs40l26 \
	google-modules/aoc \
	google-modules/aoc/usb \
	google-modules/aoc/alsa \
	google-modules/bluetooth/broadcom \
	google-modules/bms \
	google-modules/display/samsung \
	devices/google/shusky/display \
	google-modules/edgetpu/rio/drivers/edgetpu \
	google-modules/edgetpu/rio/drivers/edgetpu/gcip-kernel-driver/drivers/gcip \
	google-modules/video/gchips \
	google-modules/gpu/mali_kbase \
	google-modules/gpu/mali_pixel \
	google-modules/hdcp/samsung \
	google-modules/soc/gs/arch/arm64/boot/dts/google \
	google-modules/soc/gs/arch/arm64/boot/dts \
	google-modules/soc/gs/drivers/soc/google/gnssif_spi \
	google-modules/soc/gs/drivers/soc/google/vh/kernel/metrics \
	google-modules/touch/common \
	google-modules/touch/goodix \
	google-modules/touch/sec \
	google-modules/touch/fts/fst2 \
	google-modules/touch/fts/ftm5 \
	google-modules/gxp/zuma \
	google-modules/gxp/zuma/gcip-kernel-driver/drivers/gcip \
	google-modules/power/reset \
	google-modules/lwis \
	google-modules/nfc \
	google-modules/gps/broadcom/bcm47765 \
	google-modules/uwb \
	google-modules/wlan/bcm4398 \
	google-modules/wlan/wlan_ptracker \

	# devices/google/shusky/dts \
	# devices/google/shusky/dts/google \
