#include <stdio.h>


#define X80 0x8000000000000000ULL
int main()
{
  unsigned long long int a;

  a = 0x4000000000000000ULL << 1;

  if ( a & X80 )
    printf("OK\n");
  else
    printf("NG\n");
}
