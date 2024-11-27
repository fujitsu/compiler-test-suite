#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main( ) {
int a,b,c;
b=c=1;
a = b * 0x3fffff;
if ( a == 0x3fffff ) printf("*kaimk2044-(1) ok\n");
else                 printf("*kaimk2044-(1) ng %d\n",a);
a = 0x3fffff * c;
if ( a == 0x3fffff ) printf("*kaimk2044-(2) ok\n");
else                 printf("*kaimk2044-(2) ng %d\n",a);
a = b * 0x4fffff;
if ( a == 0x4fffff ) printf("*kaimk2044-(3) ok\n");
else                 printf("*kaimk2044-(3) ng %d\n",a);
a = 0x4fffff * c;
if ( a == 0x4fffff ) printf("*kaimk2044-(4) ok\n");
else                 printf("*kaimk2044-(4) ng %d\n",a);
exit (0);
}


