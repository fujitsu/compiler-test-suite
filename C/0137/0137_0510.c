#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {

enum a {z1 
       ,z2=10LL
       ,z3 
       ,z4=20LL
       ,z5 
       ,z6=30LL 
       ,z7 
       ,z8} k;
long long int h;

h=z3;
       if (h == 11LL) printf("**kaimk2041-(1) ok\n");
       else           printf("**kaimk2041-(1) ng\n");
h=z5;
       if (h == 21LL) printf("**kaimk2041-(2) ok\n");
       else           printf("**kaimk2041-(2) ng\n");
h=z8;
       if (h == 32LL) printf("**kaimk2041-(3) ok\n");
       else           printf("**kaimk2041-(3) ng\n");
exit (0);
}
