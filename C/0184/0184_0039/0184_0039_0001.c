#include <stdio.h>
#include <math.h>
#include "000.h"

#define MPI 3.14159265358979323846


void for_test(st01 (* restrict st01), st02 (* restrict st02) )
{
  int i ;
  for ( i = 0 ; i < Loop_MAX ; i++ ) 
  {
    st01->a[i] = sin(st02->b[i] * MPI / 180 ) ;
  }

}
