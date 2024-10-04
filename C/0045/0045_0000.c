#include <stdio.h>

int main()
{
  int  i, n=1;
  long int a[10]={0,0,0,0,0,0,0,0,0,0};

  i = 3-(n++)-n;
  do {
    a[i] = i ;
    i++;
  } while(i<10);

  for(i=0;i<10;i++) printf("%d ",a[i]); printf("\n"); 

  return 0;
}
