# Copyright 2024 NXP

EXTRA_OEMAKE  += "\
    CFG_RPMB_FS=y \
    CFG_RPMB_WRITE_KEY=y \
    CFG_REE_FS=n \
    CFG_CRYPTO_DRIVER=y \
    HSE_FWDIR=${NXP_FIRMWARE_LOCAL_DIR} \
"