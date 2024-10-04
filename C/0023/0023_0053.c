#include <stdio.h>

int main()
{
  unsigned long long int a;

  a = 0x4000000000000000ULL << 1;

  if ( a & 0x8000000000000000ULL )
    printf("OK\n");
  else
    printf("NG\n");
}
