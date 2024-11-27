#include <stdio.h>
int main( ) {
  int a,b,c;
  b= 0x80000000;
  c= -1;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf(" OK 0\n",a);
#else
  a= b%c;
  if (a==0)
  printf(" OK %d\n",a);
  else
  printf(" NG %d\n",a);
#endif
}
  

