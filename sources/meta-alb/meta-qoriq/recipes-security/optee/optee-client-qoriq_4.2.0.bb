# Copyright 2022-2024 NXP
require optee-client-qoriq.inc

OPTEE_CLIENT_BRANCH = "lf-6.6.36_2.1.0"
SRCREV = "3eac340a781c00ccd61b151b0e9c22a8c6e9f9f0"

PV:append = "+git${SRCPV}"
