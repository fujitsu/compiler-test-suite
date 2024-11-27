#include <stdio.h>
int sub(a,b,c)
  int a[10],b[10],c;
{
  int d[10],res,i;

  for (i=0; i<10; i++) {
    d[i] = 0;
  }
  for (i=0; i<10; i+=c) {
    d[i] = d[i] + a[i]*b[i];
  }
  res = 0;
  for (i=0; i<10; i++) {
    res += d[i];
  }
  return(res);
}
int main()
{
  int a[10],b[10],c;
  int res, i;

  for (i=0; i<10; i++) {
    a[i] = b[i] = i;
  }
  c = 100000;
  res = sub(a,b,c);
  printf("%d\n",res);
}
