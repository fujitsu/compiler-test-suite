#include <stdio.h>

void init(double *a)
{
  int i;
  for(i=0;i<10;i++) {
   a[i] = 1;
  }
}

int main()
{
  double aa[10];
  double bar,ans;
  int i;
  bar=0;
  ans = 10.0;
  init(aa);

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

