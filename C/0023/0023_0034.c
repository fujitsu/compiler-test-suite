#include <stdlib.h>
#include <stdio.h>

int main()
{
  long long int a;

  a = 0xfff << 0x1ff;

#if defined(__GNUC__) || defined(__SUNPRO_C)
  {
#elif defined(big_endian)
  if (   *((int *)&a)==0xffffffff
      && *((((int *)&a))+1)==0x80000000 ) {
#elif defined(__aarch64__)
  if (   *((int *)&a)==0x00000000
      && *((((int *)&a))+1)==0x00000000 ) {
#else
  if (   *((int *)&a)==0x80000000
      && *((((int *)&a))+1)==0xffffffff ) {
#endif
    printf("OK\n");
    exit(0);
  }

  printf("NG ... %d %d\n",*((int *)&a),*((((int *)&a))+1));
  exit(1);
}
