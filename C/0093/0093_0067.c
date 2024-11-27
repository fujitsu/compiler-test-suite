#include <stdio.h>
int main( ) {


  long long int a,b;


  a=9223372036854775807LL; 
  b=2;
  a=a%b;
  if (a==1)   printf("(1) ok\n");
  else        printf("(1) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));

  a=9223372036854775807LL; 
  b=-2;
  a=a%b;
  if (a==1)   printf("(2) ok\n");
  else        printf("(2) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));

  a=-9223372036854775808LL; 
  b=2;
  a=a%b;
  if (a==0)   printf("(3) ok\n");
  else        printf("(3) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));

  a=-9223372036854775808LL; 
  b=-2;
  a=a%b;
  if (a==0)   printf("(4) ok\n");
  else        printf("(4) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));
}
