#include <stdio.h>
#include <complex.h>

void r4()
{
  float a[256];
  int i;

  for(i=0;i<(16*6);i++) {
    a[i] = 2;
  }
  printf("%f \n",a[1]);

  for(i=0;i<(16*6);i++) {
    a[i] = 2;
  }
  printf("%f \n",a[1]);

  for(i=0;i<(16*6);i++) {
    a[i] = 2;
  }
  printf("%f \n",a[1]);
}

void r8()
{
  double a[256];
  int i;

  for(i=0;i<(16*3);i++) {
    a[i] = 2;
  }
  printf("%g \n",a[1]);

  for(i=0;i<(16*3);i++) {
    a[i] = 2;
  }
  printf("%g \n",a[1]);

  for(i=0;i<(16*3);i++) {
    a[i] = 2;
  }
  printf("%g \n",a[1]);
}
int main()
{
  r4();
  r8();
}


