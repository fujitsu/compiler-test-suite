#include <stdio.h>

int main()
 {
      long long int sub(),p,z;

	p=0xffffffffffffffffLL;
	z=sub(&p);
	if(z==0xffffffffffffffffLL)
		printf(" ok\n");
	else	printf(" ng %.8x\n",(long *)z);
 }

long long int sub(p)
    long long int *p;
 {
    long long int x;
	x=*p;
	return x;
 }
