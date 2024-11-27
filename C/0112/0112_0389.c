#include <stdio.h>
#include <complex.h>

void r4(int n)
{
  volatile float a[256];
  int i;

  for(i=0;i<n;i++) {
    a[i] = 2;
  }
  printf("%f \n",a[1]);
}

void r8(int n)
{
  volatile float a[256];
  int i;

  for(i=0;i<n;i++) {
    a[i] = 2;
  }
  printf("%g \n",a[1]);
}
int main()
{
  r4(256);
  r8(256);
}


