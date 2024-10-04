#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

char foo()
{
  CL x[1] = {7893457.1793 + 12345.3456i}; char y = x[0];
  return y;
}

int main(void)
{
  volatile char x = foo();
  return 0;
}
