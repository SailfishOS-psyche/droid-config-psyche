# These and other macros are documented in
# ../droid-configs-device/droid-configs.inc
%define device psyche
%define vendor xiaomi
%define vendor_pretty Xiaomi
%define device_pretty Xiaomi 12X
%define dcd_path ./
# Adjust this for your device
%define pixel_ratio 1.5
# We assume most devices will
%define have_modem 1
%define android_version_major 13

Conflicts: appsupport-system-privileged

# Device-specific usb-moded configuration
Provides: usb-moded-configs

# Device-specific ofono configuration
Provides: ofono-configs
Obsoletes: ofono-configs-mer
Obsoletes: ofono-configs-binder

Obsoletes: qt5-qpa-surfaceflinger-plugin

# Community HW adaptations need this
%define community_adaptation 1

# For bluez5
Provides: bluez5-configs
Obsoletes: bluez5-configs-mer

%define ofono_enable_plugins bluez5,hfp_ag_bluez5
%define ofono_disable_plugins bluez4,dun_gw_bluez4,hfp_ag_bluez4,hfp_bluez4,dun_gw_bluez5,hfp_bluez5

%include droid-configs-device/droid-configs.inc
%include patterns/patterns-sailfish-device-adaptation-psyche.inc
%include patterns/patterns-sailfish-device-configuration-psyche.inc
