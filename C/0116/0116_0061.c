#include <stdio.h>
int sub(int *p,int idx)
{
  int i,j;
  int d[10][10],res,a[10][10],b[10][10];

  for (i=0;i<10;i++) {
    for (j=0;j<10;j++) {
      a[i][j] = i;
      b[i][j] = a[i][j];
    }
  }
  for (i=0;i<10;i++) {
    for (j=0;j<10;j++) {
      d[i][j] = a[i][j] + b[i][j];
      if (d[i][j]<0)
        d[i][j] = d[i][j] + 1/p[idx];
    }
  }
  res = 0;
  for (i=0;i<10;i++)
    for (j=0;j<10;j++) {
      res = res + d[i][j];
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

  if (res==900)
    printf("ok\n");
  else
    printf("ng ... %d\n",res);
}
