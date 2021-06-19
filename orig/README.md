# Meyer et al high-coverage Denisovan genome

This directory records the steps I took to generate a .raf file from the
high-coverage Denisovan genome described by Meyer et al. It has been
superceded by the new assembly in ../orig2.

# Download
# Makes: DenisovaPinky.hg19_1000g.1.mod.vcf.gz,
# DenisovaPinky.hg19_1000g.1.mod.vcf.gz.tbi, etc

    sbatch download.slr

Number of sites: 2,682,416,704

# Fix malformed vcf files to make *-fixed.vcf.gz
    sbatch fixvcf.slr  

# Concatenate autosomes to make denisova.vcf.bgz
    sbatch concat.slr

# Create .raf.gz file
    sbatch mkraf.slr
