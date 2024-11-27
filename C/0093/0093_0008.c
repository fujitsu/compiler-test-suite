#include <stdio.h>

int main()
 {
      signed long long int a,b;
    unsigned long long int c,d;

    a=0x0000ffff0000ffffLL;
    b = ~a;
	if(b == 0xffff0000ffff0000LL)
	     printf("(01) ok\n");
	else printf("(01) ng %x %x\n",*(int *)&b,*(((int *)&b)+1));

    c=0x1111000000002020ULL;
    d = ~c;
	if(d == 0xeeeeffffffffdfdfULL)
	     printf("(02) ok\n");
	else printf("(02) ng %x %x\n",*(int *)&d,*(((int *)&d)+1));


 }
