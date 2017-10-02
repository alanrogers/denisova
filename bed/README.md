# Download minimal filter: DenisovaPinky...bed.bgz

    sbatch download.slr

# Check sort: produces no output, which means file is sorted.
    zcat DenisovaPinky.map35_99.MQ30.Cov.indels.TRF.bed.bgz | sort-bed --check-sort -
