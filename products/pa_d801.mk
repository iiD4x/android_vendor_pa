# Copyright (C) 2013 ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product

ifeq (pa_d801,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_g2

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit PSD device product
$(call inherit-product, vendor/psd/products/psd_d801.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d801/d801.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d801
PRODUCT_NAME := pa_d801
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D801
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d801 BUILD_FINGERPRINT=lge/g2_tmo_us/g2:4.2.2/JDQ39B/D80110c.1376399304:user/release-keys PRIVATE_BUILD_DESC="g2_tmo_us-user 4.2.2 JDQ39B D80110c.1376399304 release-keys"

endif
