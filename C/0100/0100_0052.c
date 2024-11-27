#include <stdio.h>

void init(double *a, int n);
void init(double *a, int n)
{
  int i;
  for(i=0;i<n;i++) {
    a[i] = a[i] + a[11];
  }
}

int main()
{
  double aa[20];
  int i;
  double bar,ans;
  bar=0;
  ans = 20.0;
  for(i=0;i<20;i++) {
    aa[i] = 1.0;
  }
  init(aa,10);

  for(i=0;i<10;i++) {
    bar += aa[i];
  }
  if(bar == ans) {
    printf("OK \n");
  } else {
    printf("NG %lf \n", bar);
  }
  return 0;
}

