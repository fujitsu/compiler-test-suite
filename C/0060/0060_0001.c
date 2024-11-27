#include <stdio.h>

int sub(p,idx)
     int *p;
     int idx;
{
  int i;
  int d[10],res,a[10],b[10],c[10];

  for (i=0;i<10;i++) {
    a[i] = i;
    b[i] = a[i];
    c[i] = i;
    d[i] = 0;
  }
  for (i=0;i<10;i=i+idx) {
    d[i] = a[i] + b[i]*c[i];
  }

  res = 0;
  for (i=0;i<10;i=idx)
    res = res + d[i];

  return(res);
}
int main()
{
  int i,res,n;
  int p[10];
  
  for (i=0;i<10;i++)
    p[i] = 0;

  i = 1000000;
  res = sub(p,i);

  if (res == 0)
    printf("ok\n");
  else
    printf("ng ... %d\n",res);
}
