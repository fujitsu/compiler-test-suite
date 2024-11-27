#include <stdio.h>
#include <math.h>


double pi()
{
    double r0, r1, pi0, pi1, n, f;
    n = 2.0;   f = 4.0;   r1 = 2.0;   pi1 = 2.0;
    do {
        pi0 = pi1;
        r0  = r1;
        n   = n*2.0;
        f   = 2-sqrt(4.0-f);
    pi1 = sqrt(f)*n/2.0;
    } while( r0 >= (r1= (( pi1-pi0 <0)?-( pi1-pi0 ): pi1-pi0 ) ) );
    return pi0;
}
int main()
{
	printf("*** K017-3 (examine object code) ***\n") ;
}
