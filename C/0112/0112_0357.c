#include <stdio.h>
#include <complex.h>

void r4()
{
  int mask[10]={-5,-5,2,2,-5,2,2,-5,2,-5};
  float a[10],aa;
  int i;
  for(i=0;i<10;i++) {
    if (mask[i] < 0) {
      aa = 1;
    } else {
      aa = 0;
    }
    a[i] = aa;
  }
  for(i=0;i<10;i++) printf("%f ",a[i]);
  printf("\n");
}
void r8()
{
  int mask[10]={-5,-5,2,2,-5,2,2,-5,2,-5};
  double a[10],aa;
  int i;
  for(i=0;i<10;i++) {
    if (mask[i] < 0) {
      aa = 1;
    } else {
      aa = 0;
    }
    a[i] = aa;
  }
  for(i=0;i<10;i++) printf("%f ",a[i]);
  printf("\n");
}
int main()
{
  r4();
  r8();
}


