#include <stdio.h>

void init(double a[][10]);
void init(double a[][10])
{
  int i,j;
  for(i=0;i<10;i++) {
    for(j=0;j<10;j++) {
      a[i][j] = 1;
    }
  }
}

int main()
{
  double aa[10][10];
  double bar,ans;
  int i,j;
  bar=0;
  ans = 100.0;
  init(aa);

  for(i=0;i<10;i++) {
    for(j=0;j<10;j++) {
      bar += aa[i][j];
    }
  }
  if(bar == ans) {
    printf("OK \n");
  } else {
    printf("NG %lf \n", bar);
  }
  return 0;
}

