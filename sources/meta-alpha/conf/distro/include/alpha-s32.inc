require conf/distro/fsl-auto.conf

DISTRO_NAME = "alpha-s32"
DISTRO_VERSION = "${ALPHA_RELEASE} (based on Auto Linux BSP ${ALB_RELEASE})"

# Features specific to the GoldVIP distros
DISTRO_FEATURES:append = " pfe-slave"
DISTRO_FEATURES:append = " llce llce-can-logger llce-can-multihost llce-linflex llce-lpspi"
DISTRO_FEATURES:append = " hse"

SJA1110_UC_FW ?= "${NXP_FIRMWARE_LOCAL_DIR}/sja1110_uc.bin"
SJA1110_SWITCH_FW ?= "${NXP_FIRMWARE_LOCAL_DIR}/sja1110_switch.bin"
ENABLE_DYNAMIC_BOOT_CONFIG ?= "true"

DISTRO_FEATURES:remove = " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED:remove = " sysvinit"
VIRTUAL-RUNTIME_init_manager = "sysvinit"
VIRTUAL-RUNTIME_initscripts = "initscripts"

