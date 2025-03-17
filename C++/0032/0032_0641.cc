















#include <stdio.h>
int main()
{
  int i=0, j=10;

  i++, j--;
  goto lab2;

 lab1:
  while( 1 )
  {
    int a=0;
 
    a++;
    if ( a > 0 ) break;
  }

 lab2:
  int x=0, y=10;

  i++, j--;
  if ( i < j )
    goto lab1; 

  if ( i == 5 && j == 5 )
    printf("ok\n");
  else 
    printf("ng\n");

}
