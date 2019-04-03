fun makeLst = 
	if n = 1 then [1]
	else makeLst(n-1)@[n];

fun removeMult (lst, n) = 
	if null lst then []
	else if (hd lst) mod n = 0
		then removeMult (tl lst)
		else (hd lst)::removeMult(tl lst);

fun sieve lst = 
	if null lst then null
	else (hd lst)::sieve(removeMult(tl lst, hd lst));

fun primes n = 
	sieve(tl(makeLst n));