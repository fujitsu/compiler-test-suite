#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int  a;
  int  hi,low;

  a = 0xf000000000000000 >> 0xfff;

  hi  = *((int *)&a);
  low = *((((int *)&a))+1);

#if defined(__GNUC__) || defined(__SUNPRO_C)
  {
#elif defined(big_endian)
  if (   hi==0x0 && low==0x1 ) {
#elif defined(__x86_64__) || defined(__aarch64__)
  if (   (hi==0x0 || hi==0x1) && low==0x0 ) {
#else
  if (   hi==0x0 && low==0x0 ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("%x %x\n", a, *(((unsigned int *)&a)+1));
  printf("NG\n");
  exit(1);
}
