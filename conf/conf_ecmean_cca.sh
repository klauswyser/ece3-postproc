#!/bin/bash

# Required programs, including compression options
module load cdo

export cdo=cdo
export cdozip="$cdo -f nc4c -z zip"
export cdonc="$cdo -f nc"

# preferred type of CDO interpolation (curvilinear grids are obliged to use bilinear)
export remap="remapcon2"

# Where to save the table produced
export OUTDIR=${HOME}/EC-Earth3/diag/table/${exp}
mkdir -p $OUTDIR

