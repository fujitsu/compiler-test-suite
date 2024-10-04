#include <stdio.h>

int main()
{
  int  i, n=1;
  long int a[10]={0,0,0,0,0,0,0,0,0,0};

  for(i=3-(n++)-n;i<10;i++){   
    a[i] = i ;
  }

  for(i=0;i<10;i++) printf("%d ",a[i]); printf("\n"); 

  return 0;
}
