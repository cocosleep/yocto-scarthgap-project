# Copyright 2024 NXP

require recipes-bsp/arm-trusted-firmware/atf-src-${PV}.inc
require recipes-bsp/arm-trusted-firmware/arm-trusted-firmware.inc

URL = "git://github.com/cocosleep/arm-trusted-firmware.git;protocol=https"
BRANCH = "master"

DEFAULT_PREFERENCE = "1"
SRCREV = "${AUTOREV}"
PV = "1.0+git${SRCPV}"

do_deploy:append:s32g399aalpha() {
	for suffix in ${BOOT_TYPE}; do
		cp -vf "${ATF_BINARIES}/fip.s32-${suffix}" ${DEPLOYDIR}
        cp -vf "${ATF_BINARIES}/fip.bin-${suffix}" ${DEPLOYDIR}
	done
}

COMPATIBLE_MACHINE = "s32g399aalpha"