MACHINE_DEPLOY_FIRMWARE_REQUIRE ?= ""
MACHINE_DEPLOY_FIRMWARE_REQUIRE:corstone1000 = "corstone1000-firmware-deploy-image.inc"

require ${MACHINE_DEPLOY_FIRMWARE_REQUIRE}
