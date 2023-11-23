// S(m) = m + 2*m + 3*m + ... + a*m
//      = m*a*(a+1)/2,  a = (N-1)div m, N = 1000;
// S(3) + S(5) double-counts multiples of 15
p01:{sum[m*a*1+a:999 div m:3 5 -15]div 2}

// a_n = a_{n-1} + a_{n-2},  a_0 = a_1 = 1;
// S(N) = \sum_{n=0}^N a_n
//      = 2 + \sum_{n=2}^N (a_{n-1}+a_{n-2})
//      = 2 + \sum_{n=1}^{N-1}a_n + \sum_{n=0}^{N-2}a_n
//      = 1 + S(N) - a_N + S(N) - a_N - a_{N-1}
//      = 1 + 2*S(N) - a_{N+2}  =>  S(N) = a_{N+2} - 1;
// each 3rd term is even and is equal to sum of previous two terms
// => sum of even terms = S(N)/2 if N is even
p02:{(('[4000000>=;last])({(a;b;a+b:z+a:y+z)}.)/1 1 2)[1]div 2}

