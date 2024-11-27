#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
struct t {
	  unsigned long long int b:56;
	  unsigned long long int h:8;
	 } x={1LL,1LL};
struct u {
	  signed long long int h:8;
	 } y={1LL};
if (x.h == 1LL)printf("comk2019-(01) ok\n");   
else		printf("comk2019-(01) ng\n");

if (y.h == 1LL) printf("comk2019-(02) ok\n");   
else		printf("comk2019-(02) ng\n");
exit(0);
}

