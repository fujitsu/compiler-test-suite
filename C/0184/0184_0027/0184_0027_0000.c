#include <stdio.h>
#include "000.h"

int main()
{
  st01 st01 ;
  st02 st02 ;

  int i,j,k ;
  for ( i = 0 ; i < Loop_MAX ; i++ )
  {
    for ( j = 0 ; j < Loop_MAX ; j++ ) 
    {
      for ( k = 0 ; k < Loop_MAX ; k++ ) 
      {
        st02.b[i][j][k] = 1 ;
        st02.c[i][j][k] = 1 ;
      }
    }
  }

  for_test(&st01,&st02) ;

  int result ;
  result = 0 ;
  for ( i = 0 ; i < Loop_MAX ; i++ )
  {
    for ( j = 0 ; j < Loop_MAX ; j++ ) 
    {
      for ( k = 0 ; k < Loop_MAX ; k++ ) 
      {
        result += st01.a[i][j][k] ;
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
