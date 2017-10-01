#\!/bin/bash
# The code below filters all .vcf.gz files through a sed script, which adds 
# a definition of LowQual and replaces the string "\t.;" with "\t". In other 
# words, it deletes ".;" at the beginning of a field.

x=`basename $1 .vcf.gz` 
zcat $1 | sed -f fixvcf.sed | bgzip > ${x}-fixed.vcf.gz
