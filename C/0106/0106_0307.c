#include <stdio.h>
typedef int (*FUNCPTR)(int a,int b);

int multiple(int a,int b)
{
  int i;
  int result;

  result =  a * b;
  return(result);
}

int divide(int a,int b)
{
  int i;
  int result;
  
  result =  a + b;
  return(result);
}
int main()
{
  int a[100],b[100];
  int result , i;
  int result2;
  FUNCPTR tFuncPtr;

  for (i=0;i<100;i++){
    a[i] = i+2;
    b[i] = i;
  }

  tFuncPtr=&multiple;
  for (i=0;i<100;i++){
    result=(tFuncPtr)(a[i],b[i]);
    result2=divide(a[i],b[i]);
  }
  for (i=0;i<10;i++){
    printf("Answer is %d\n",result);
    printf("Answer is %d\n",result2);
  }
}
