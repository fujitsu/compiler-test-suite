#include <stdio.h>
long double foo()
{
   return 1.0;
}
int main()
{
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
}
