#!/bin/bash

ifile=$1
bcftools query -f'%CHROM\n' ${ifile} | wc -l
