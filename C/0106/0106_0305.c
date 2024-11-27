#include <stdio.h>

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

  for (i=0;i<100;i++){
    a[i] = i+2;
    b[i] = i;
  }

  for (i=0;i<100;i++){
    result=multiple(a[i],b[i]);
  }
  printf("Answer is %d\n",result);
  for (i=0;i<100;i++){
    result= divide(a[i],b[i]);
  }
  printf("Answer is %d\n",result);
}
