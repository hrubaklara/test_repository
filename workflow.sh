# features per chromosome
INPUT=data/Ensembl.NCBIM37.67.bed
<$INPUT cut -f1 | sort | uniq -c

# note the single quotes, they're important because of $
<$INPUT cut -f1 | sort | uniq -c | awk '{print $2, $1}'

