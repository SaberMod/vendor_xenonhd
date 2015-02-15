# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

XENONHD_BUILD_TYPE := update-XenonHD-$(shell date +"%m-%d-%y")

# Determine what to name the new signed package
ifneq ($(XENONHD_OFFICIAL),)
    XENONHD_VERSION := $(XENONHD_BUILD_TYPE)-signed
else
    XENONHD_VERSION := $(XENONHD_BUILD_TYPE)-unofficial
endif

# Rom Manager properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xehdversion=XenonHD-$(shell date +"%m-%d-%y") \
    ro.modversion=XenonHD-$(shell date +"%m-%d-%y") \
    ro.rommanager.developerid=TeamHorizon
    
# ROM Statistics and ROM Identification
PRODUCT_PROPERTY_OVERRIDES += \
ro.romstats.url=http://iceandfire.co/stats/ \
ro.romstats.name=XenonHD \
ro.romstats.version=$(shell date +"%m-%d-%y") \
ro.romstats.tframe=2

#OTA updater app
PRODUCT_PROPERTY_OVERRIDES += \
otaupdater.otaid=XenonHD_ROM \
otaupdater.otaversion=$(shell date +"%Y%m%d") \
otaupdater.otatime=$(shell date +"%Y%m%d-%H%M") \
