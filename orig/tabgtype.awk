{x[$6] += 1}
END {for(key in x) printf("%3s %d\n", key, x[key])}
