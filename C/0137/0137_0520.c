#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main( ) {
  long long int a,b;


  a=9223372036854775807LL; 
  b=2;
  a=a%b;
  if (a==1)   printf("kaimk2056(1) ok\n");
  else        printf("kaimk2056(1) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));

  a=9223372036854775807LL; 
  b=-2;
  a=a%b;
  if (a==1)   printf("kaimk2056(2) ok\n");
  else        printf("kaimk2056(2) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));

  a=-9223372036854775808LL; 
  b=2;
  a=a%b;
  if (a==0)   printf("kaimk2056(3) ok\n");
  else        printf("kaimk2056(3) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));

  a=-9223372036854775808LL; 
  b=-2;
  a=a%b;
  if (a==0)   printf("kaimk2056(4) ok\n");
  else        printf("kaimk2056(4) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));
exit (0);
}
