#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01 ;
  st02 st02 ;

  int i,j ;
  for ( i = 0 ; i < Loop_MAX ; i++ )
  {
    for ( j = 0 ; j < Loop_MAX ; j++ ) 
    {
      st02.b[i][j] = 1 ;
      st02.c[i][j] = 1 ;
    }
  }

  for_test(&st01,&st02) ;

  int result ;
  result = 0 ;
  for ( i = 0 ; i < Loop_MAX ; i++ )
  {
    for ( j = 0 ; j < Loop_MAX ; j++ ) 
    {
      if (st01.a[i][j] != 'A'){
        result = result + 1 ;
      }
    }
  }

  if (result == EXPECTED_VALUE) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

   return 0;
}
