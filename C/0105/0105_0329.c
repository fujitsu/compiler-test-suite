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
  int i,m;
  m = 0;
  for (i=0;i<20;i++){
    a[i] = i;
    b[i] = i;
    c[i] = i;
  }
  for (i=0;i < 20;i++){
     b[i] = a[i] + c[i];
  }
  if (m == 0){
    for (i=0;i < 20;i++){
      b[i] = b[i] + c[i];
    }
  }
  res = 0;
  for (i=0;i < 20;i++){
    res = res + b[i];
  }
  printf("%f \n",res);
}
