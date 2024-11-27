#include <stdio.h>

signed long long  foo()
{
   return -1;
}
int main()
{
  union {
    long double x;
    int         y[4];
  } u;

  u.y[0] = u.y[1] = u.y[2] = u.y[3] = 0;

  printf("%d \n",(signed char )foo());
  printf("%d \n",(signed short)foo());
  printf("%d \n",(signed int  )foo());
  printf("%lld \n",(signed long long )foo());
  printf("%d \n",(unsigned char )foo());
  printf("%d \n",(unsigned short)foo());
  printf("%d \n",(unsigned int  )foo());
  printf("%lld \n",(unsigned long long )foo());
  printf("%g \n",(float )foo());
  printf("%g \n",(double )foo());
  u.x = (long double )foo();
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  if( u.y[3] == 0 && u.y[2] == 0xbfff && u.y[1] == 0x80000000 && u.y[0] == 0 ) {
    u.y[0] = u.y[1] = u.y[2] = u.y[3] = 0;
    u.y[3] = 0xbfff0000;
  }
  printf("%x %x %x %x\n",u.y[3],u.y[2],u.y[1],u.y[0]);
#else
  printf("%x %x %x %x\n",u.y[0],u.y[1],u.y[2],u.y[3]);
#endif
}
