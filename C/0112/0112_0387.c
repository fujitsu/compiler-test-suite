#include <stdio.h>
#include <complex.h>

void i4(int n)
{
  int a[256];
  int i;

  for(i=1;i<n;i++) {
    a[i] = 2;
  }
  printf("%d \n",a[1]);
}
void r4(int n)
{
  float a[256];
  int i;

  for(i=1;i<n;i++) {
    a[i] = 2;
  }
  printf("%f \n",a[1]);
}
void u4(int n)
{
  unsigned int a[256];
  int i;

  for(i=1;i<n;i++) {
    a[i] = 2;
  }
  printf("%u \n",a[1]);
}

void i8(int n)
{
  long long int a[256];
  int i;

  for(i=1;i<n;i++) {
    a[i] = 2;
  }
  printf("%d \n",a[1]);
}
void r8(int n)
{
  double a[256];
  int i;

  for(i=1;i<n;i++) {
    a[i] = 2;
  }
  printf("%g \n",a[1]);
}
void u8(int n)
{
  unsigned long long int a[256];
  int i;

  for(i=1;i<n;i++) {
    a[i] = 2;
  }
  printf("%u \n",a[1]);
}
int main()
{
  i4(256);
  r4(256);
  u4(256);

  i8(256);
  r8(256);
  u8(256);
}


