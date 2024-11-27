#include <stdio.h>
static void sub1(void);
static void sub2(void);
int main()
{
  sub1();
  sub2();
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
    if (m  ==0){
      a[i] = i;
    }
    b[i] = a[i] + c[i];
  }
  res = 0;
  for (i=0;i < 20;i++){
    res = res + b[i];
  }
  printf("%f \n",res);
}
void sub2()
{
  float a[20],b[20],c[20],res1,res2;
  int i,m,y;
  y = 0;
  m = 20;
  for (i=0;i<20;i++){
    a[i] = i;
    b[i] = i;
    c[i] = i;
  }
  for(i=0;i < m;i++){
    if (y == 0) {
      a[i] = a[i]+b[i];
    }else{
      b[i] = b[i]+c[i];
    }
  }    
  res1 = 0;
  res2 = 0;
  for (i=0;i < m;i++){
    res1 = res1 + a[i];
    res2 = res2 + b[i];
  }
  printf("%f \n",res1);
  printf("%f \n",res2);
}
