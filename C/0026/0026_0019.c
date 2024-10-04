#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

short foo()
{
  CL x[1] = {7893457.1793 + 12345.3456i}; short z,*y = &z; *y = x[0];
  return *y;
}

int main(void)
{
  volatile short x = foo();
  return 0;
}
