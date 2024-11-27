#include <stdio.h>
#include <complex.h>

void r4_fpmadd()
{
  int mask[10]={-5,-5,2,2,-5,2,2,-5,2,-5};
  float a[10];
  int i;
  for(i=0;i<10;i++) {
    if (mask[i] < 0) {
      a[i] = 1;
    } else {
      a[i] = 0;
    }
  }
  for(i=0;i<10;i++) printf("%f ",a[i]);
  printf("\n");
}

void r8_fpmadd()
{
  int mask[10]={-5,-5,2,2,-5,2,2,-5,2,-5};
  double a[10];
  int i;
  for(i=0;i<10;i++) {
    if (mask[i] < 0) {
      a[i] = 1;
    } else {
      a[i] = 0;
    }
  }
  for(i=0;i<10;i++) printf("%f ",a[i]);
  printf("\n");
}

void r4()
{
  float mask[10]={-5,-5,2,2,-5,2,2,-5,2,-5};
  float a[10];
  int i;
  for(i=0;i<10;i++) {
    if (mask[i] < 0) {
      a[i] = 1;
    } else {
      a[i] = 0;
    }
  }
  for(i=0;i<10;i++) printf("%f ",a[i]);
  printf("\n");
}

void r8()
{
  double mask[10]={-5,-5,2,2,-5,2,2,-5,2,-5};
  double a[10];
  int i;
  for(i=0;i<10;i++) {
    if (mask[i] < 0) {
      a[i] = 1;
    } else {
      a[i] = 0;
    }
  }
  for(i=0;i<10;i++) printf("%f ",a[i]);
  printf("\n");
}
int main()
{
  r4_fpmadd();
  r8_fpmadd();
  r4();
  r8();
}


