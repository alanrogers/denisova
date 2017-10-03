{
    for(i=1; i<=NF; ++i)
	x[$i] += 1
}
END {
    for(key in x) printf("%3s %d\n", key, x[key])
}
