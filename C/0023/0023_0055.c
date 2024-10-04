#include <stdio.h>

#define X80 0x8000000000000000ULL

static void sub();
int main()
{
  unsigned long long int a;

  sub(&a);
  a = a << 1;

  if ( a & X80 )
    printf("OK\n");
  else
    printf("NG\n");
}

static void sub(a)
     unsigned long long int *a;
{
  *a = 0x4000000000000000ULL;
}
