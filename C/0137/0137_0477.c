#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
      signed long long int a,b;
    unsigned long long int c,d;

    a=0x0000ffff0000ffffLL;
    b = ~a;
	if(b == 0xffff0000ffff0000LL)
	     printf("comk2012-(01) ok\n");
	else printf("comk2012-(01) ng %x %x\n",*(int *)&b,*(((int *)&b)+1));

    c=0x1111000000002020LL;
    d = ~c;
	if(d == 0xeeeeffffffffdfdfLL)
	     printf("comk2012-(02) ok\n");
	else printf("comk2012-(02) ng %x %x\n",*(int *)&d,*(((int *)&d)+1));


exit (0);
 }
