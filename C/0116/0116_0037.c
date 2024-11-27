#include <stdio.h>
int sub(int *p,int idx)
{
  int i,j,k;
  int d[10][10][10],res,a[10][10][10],b[10][10][10];

  for (i=0;i<10;i++) {
    for (j=0;j<10;j++) {
      for (k=0;k<10;k++) {
        a[i][j][k] = i;
        b[i][j][k] = a[i][j][k];
      }
    }
  }
  for (i=0;i<10;i++) {
    for (j=0;j<10;j++) {
      for (k=0;k<10;k++) {
        d[i][j][k] = a[i][j][k] + b[i][j][k];
        if (d[i][j][k]<0)
          d[i][j][k] = d[i][j][k] + 1/p[idx];
      }
    }
  }
  res = 0;
  for (i=0;i<10;i++)
    for (j=0;j<10;j++) {
      for (k=0;k<10;k++) {
        res = res + d[i][j][k];
      }
    }
  return(res);
}

int main()
{
  int i,res ;
  int p[10];
  
  for (i=0;i<10;i++)
    p[i] = 0;

  i = 9;
  res = sub(p,i);

  if (res==9000)
    printf("ok\n");
  else
    printf("ng ... %d\n",res);
}
