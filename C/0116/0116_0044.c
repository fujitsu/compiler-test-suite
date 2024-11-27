#include <stdio.h>
int sub(int *p,int idx)
{
  int i;
  int d[10],res,a[10],b[10];

  for (i=0;i<10;i++) {
    a[i] = i;
    b[i] = a[i];
  }
  for (i=0;i<10;i++) {
    d[i] = a[i] + b[i];
    if (d[i]<0)
      d[i] = d[i] + 1/p[idx];
  }
  for (i=0;i<10;i++) {
    d[i] = a[i] + b[i];
    if (d[i]<0)
      d[i] = d[i] + 1/p[idx];
  }
  res = 0;
  for (i=0;i<10;i++)
    res = res + d[i];

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

  if (res==90)
    printf("ok\n");
  else
    printf("ng ... %d\n",res);
}
