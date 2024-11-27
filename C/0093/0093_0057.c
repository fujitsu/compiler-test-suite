#include <stdio.h>
int main( ) {
int a,b,c;
b=c=1;
a = b * 0x3fffff;
if ( a == 0x3fffff ) printf("*(1) ok\n");
else                 printf("*(1) ng %d\n",a);
a = 0x3fffff * c;
if ( a == 0x3fffff ) printf("*(2) ok\n");
else                 printf("*(2) ng %d\n",a);
a = b * 0x4fffff;
if ( a == 0x4fffff ) printf("*(3) ok\n");
else                 printf("*(3) ng %d\n",a);
a = 0x4fffff * c;
if ( a == 0x4fffff ) printf("*(4) ok\n");
else                 printf("*(4) ng %d\n",a);
}


