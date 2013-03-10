#!/usr/bin/env node

function is_prime(n) {
	var d = 2,
		sqrt = Math.sqrt(n);

	for (; d <= sqrt; d += 1) {
		if (n % d === 0) {
			return false;
		}
	}

	return true;
}

function pf(n) {
	var d;

	if (is_prime(n)) {
		return n;
	}

	d = Math.ceil(Math.sqrt(n));

	for(; d > 1; d -= 1) {
		if (n % d === 0 && is_prime(d)) {
			return d;
		}
	}
}

console.log(pf(600851475143));
