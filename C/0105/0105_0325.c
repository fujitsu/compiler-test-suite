#include <stdio.h>
static void sub1(void);
int main()
{
  sub1();
  return 0;
}
void sub1()
{
  float a[20],b[20],c[20],res;
  int i,m,n;
  m = 0;
  for (i=0;i<20;i++){
    a[i] = i;
    b[i] = i;
    c[i] = i;
  }
  n =1;
  for (i=0;i < 20;i++){
     if (i < 10) {
       b[i] = a[n] ;
       n = n + 1;
     }
  }
  res = 0;
  for (i=0;i < 20;i++){
    res = res + b[i];
  }
  printf("%f \n",res);
}
