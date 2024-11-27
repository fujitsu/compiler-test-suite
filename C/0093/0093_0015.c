#include <stdio.h>

int main( ) {
struct t {
	  unsigned long long int b:56;
	  unsigned long long int h:8;
	 } x={1ULL,1ULL};
struct u {
	  signed long long int h:8;
	 } y={1LL};
if (x.h == 1ULL)printf("(01) ok\n");   
else		printf("(01) ng\n");

if (y.h == 1LL) printf("(02) ok\n");   
else		printf("(02) ng\n");
}

