
#include <stdio.h>

int sub(a,b,c,res)
  int a[10],b[10];   
  int c,res;
{
  int d[10];
  int i;

  for(i=0;i<10;i++) {
    d[i] = 0;
  }
  
  res = 0;
  for(i=1;i<c;i=i+10000) {
    res =  d[i] + a[i] + b[i];
  }
  return res;
}
int main() {
  int a[10],b[10];
  int c,res,i;

  for(i=0;i<10;i++) {
    a[i] = 5;
    b[i] = a[0];
  }
  c = 10;
  res = sub(a,b,c,res);

  if (res==10)
    printf("ok\n");
  else
    printf("ng : %d\n",res);
}
