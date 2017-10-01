# This script fixes two problems in the .vcf.gz files that
# accompany the Prufer et al paper on the Altai Neanderthal.
#
# Problem 1: The "LowQual" value, which shows up in the FILTER
# field, is not defined.
#
# Problem 2: Some INFO fields begin with ".;", which also generates
# a warning in bcftools.
#
# This script adds a definition of LowQual and replaces the
# string "\t.;" with "\t". In other words, It deletes ".;" at 
# the beginning of a field.
1a ##FILTER=<ID=LowQual,Description="Low quality">
/	\.;/s//	/
