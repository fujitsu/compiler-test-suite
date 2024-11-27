#include <stdio.h>
int foo_4097_32_4096()
{
#if defined(D__SUNPRO_C) || defined(__GNUC__) || defined (__aarch64__)         
   return 8193;
#else
   return (4097<<32)+4096;
#endif
}
int foo_4097_32_4097()
{
#if defined(D__SUNPRO_C) || defined(__GNUC__) || defined (__aarch64__)         
   return 8194;
#else
   return (4097<<32)+4097;
#endif
}

int foo_4097_32()
{
#if defined(D__SUNPRO_C) || defined(__GNUC__) || defined (__aarch64__)         
   return 4097;
#else
   return 4097<<32;
#endif
}

int foo_4097()
{
   return 4097;
}

int foo_4096()
{
   return 4096;
}

int foo1()
{
   return 1;
}

int foo0()
{
  return 0;
}

int foo_1()
{
  return -1;
}
int main()
{
  printf(" %d \n", foo_4097_32_4096() );
  printf(" %d \n", foo_4097_32_4097() );
  printf(" %d \n", foo_4097_32() );
  printf(" %d \n", foo_4097() );
  printf(" %d \n", foo_4096() );
  printf(" %d \n", foo1() );
  printf(" %d \n", foo0() );
  printf(" %d \n", foo_1() );
}
