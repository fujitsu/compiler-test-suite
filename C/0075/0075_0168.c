
#include <stdio.h>
int main() 
{
  int x[16];
  static int y[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
  
  for (x[15]=1; x[15]<=2; x[15]++)
    y[15]++ ;

  if (y[15] == 2)
    printf(" ***   OK  *** \n") ;
  else
    {
    printf(" ***   NG  *** \n") ;
    printf(" Y=%d \n",y[15]) ;
    }
}
