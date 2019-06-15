# Filter bed files for Denisova genome

## Filters from the original paper

This section refers to the filters distributed with the original paper
on the high-coverage Denisovan genome: Meyer et al. 2012. A
high-coverage genome sequence from an archaic Denisovan
individual. Science:338(6104):222-226. 

### Download minimal filter: DenisovaPinky...bed.bgz

    sbatch download.slr

### Check sort: produces no output, which means file is sorted.

    zcat DenisovaPinky.map35_99.MQ30.Cov.indels.TRF.bed.bgz |
    sort-bed --check-sort -

## New filters

This section refers to the filters for the new Denisovan sequence as
described by Prufer et al. 2017. A high-coverage Neandertal genome
from Vindija Cave in Croatia. Science, 358(6363):655-658.

### Download bed files

    sbatch getbed.slr

