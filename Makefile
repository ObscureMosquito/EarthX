TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS= armv7 armv7s arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EarthX

EarthX_FILES = Tweak.x
EarthX_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
