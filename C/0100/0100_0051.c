#include <stdio.h>

void init(double a[][10], double b[][10])
{
  int i,j;
  for(i=0;i<10;i++) {
    for(j=0;j<10;j++) {
      a[i][j] = a[i][j] + b[i][j];
    }
  }
}
int main()
{
  double aa[10][10];
  double bb[10][10];
  int i,j;
  double bar,ans;
  bar=0;
  ans = 300.0;

  for(i=0;i<10;i++) {
    for(j=0;j<10;j++) {
      aa[i][j] = 1;
      bb[i][j] = 2;
    }
  }

  init(aa,bb);

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

}

