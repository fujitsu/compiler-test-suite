#include <stdio.h>
int main( ) {
  long long int a,b;


  a=0x8000000000000000LL-0xffffffff00000001LL;
  if (a==0x80000000ffffffffLL)
              printf("(1) ok\n");
  else        printf("(1) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));

  a=0x8000000000000000LL;
  b=0xffffffff00000001LL;
  a=a-b;
  if (a==0x80000000ffffffffLL)
              printf("(2) ok\n");
  else        printf("(2) ng %x %x\n", *(long*)&a, *(((long*)&a)+1));
}
