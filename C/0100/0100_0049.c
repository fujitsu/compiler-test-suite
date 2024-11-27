#include <stdio.h>

void init(double *a, double *b)
{
  int i;
  for(i=0;i<10;i++) {
   a[i] = a[i] + b[i];
  }
}

int main()
{
  double aa[10],bb[10];
  double bar,ans;
  int i;
  bar=0;
  ans = 30.0;
  for(i=0;i<10;i++) {
    aa[i] = 1;
    bb[i] = 2;
  }
  init(aa,bb);

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

