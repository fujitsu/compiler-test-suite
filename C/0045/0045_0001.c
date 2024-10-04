#include <stdio.h>

int main()
{
  int  i;
  volatile int  n=1;
  long int a[10]={0,0,0,0,0,0,0,0,0,0};

  for(i=n;i<10;i++){   
    a[i] = i ;
  }

  for(i=0;i<10;i++) printf("%d ",a[i]); printf("\n"); 

  return 0;
}
