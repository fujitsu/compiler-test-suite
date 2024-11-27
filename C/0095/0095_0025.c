
#include <stdarg.h>
#include <stdio.h>

int func(int nargs, ...)
 {
     va_list ap;
       signed long long int ll;
     unsigned long long int ull;
     int i;
  	
	va_start(ap, nargs);

	ll = va_arg(ap, signed long long int);
	if (ll==-1 && va_arg(ap, signed long long int)==4096)
		printf("(01) ok\n");
	else	printf("(01) ng\n");

	ull = va_arg(ap, unsigned long long int);
	if (ull==4095 && va_arg(ap, unsigned long long int)==0)
		printf("(02) ok\n");
	else	printf("(02) ng\n");

	va_end(ap);
 }
int main()
 {
     func(4, (  signed long long int)-1,  (  signed long long int)4096, 
             (unsigned long long int)4095,(unsigned long long int)0);
     return 0;
 }

