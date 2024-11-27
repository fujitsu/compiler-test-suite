#include <stdio.h>

int main()
 { 
     signed long long int a(),b;
   unsigned long long int c(),d;

	b = a();
	if(b == 100LL)	printf("(01) ok\n");
	else		printf("(01) ng %x %x\n",
					*(int *)&b,*(((int *)&b)+1));

	d = c();
	if(d == 100ULL)	printf("(02) ok\n");
	else		printf("(02) ng %x %x\n",
					*(int *)&d,*(((int *)&d)+1));
 }
  signed long long int a(){return 100LL;}
unsigned long long int c(){return 100ULL;}

