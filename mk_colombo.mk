#
# Copyright (C) 2018-2019 The MoKee Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit from colombo device
$(call inherit-product, device/smartisan/colombo/device.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=XiNGRZ

PRODUCT_NAME := mk_colombo
PRODUCT_BRAND := SMARTISAN
PRODUCT_DEVICE := colombo
PRODUCT_MANUFACTURER := smartisan
PRODUCT_MODEL := SM919

PRODUCT_GMS_CLIENTID_BASE := android-smartisan

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="colombo" \
    PRIVATE_BUILD_DESC="colombo-user 6.0.1 MXB48T 1 release-keys"

BUILD_FINGERPRINT := SMARTISAN/colombo/colombo:6.0.1/MXB48T/1:user/release-keys

# Sign bootable images
PRODUCT_SUPPORTS_VERITY := true
PRODUCT_SUPPORTS_BOOT_SIGNER := true
PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity

TARGET_VENDOR := Smartisan
