# denisova
README files associated with data from Meyer et al paper on high-coverage 
Denisovan genome

# Download minimal filter
wget https://bioinf.eva.mpg.de/altai_minimal_filters/DenisovaPinky.map35_99.MQ30.Cov.indels.TRF.bed.bgz
wget https://bioinf.eva.mpg.de/altai_minimal_filters/AltaiNea.map35_99.MQ30.Cov.indels.TRF.bed.bgz

# Create a bed file for just chr 22

    zcat DenisovaPinky.map35_99.MQ30.Cov.indels.TRF.bed.bgz | grep ^22
    > DenisovaPinky.map35_99.chr22.bed

# Restrict vcf file

    rogers@kimura:~/data/denisova/hg19_1000g$ bcftools view
    --output-file ../foo.vcf -Ov --regions-file
    ../DenisovaPinky.map35_99.chr22.bed  T_hg19_1000g.22.mod.vcf.gz

# Generate data for analysis. Output looks like
# 22 20006558 G G/G
# 22 20006574 G A/A
# 22 20006992 A C/C
# Columns are chr, pos, ref, alt, ancestral_allele, genotypes...
bcftools query -f '%CHROM %POS %REF %ALT %INFO/CAnc[ %GT]\n' denisova-2Mb.vcf
