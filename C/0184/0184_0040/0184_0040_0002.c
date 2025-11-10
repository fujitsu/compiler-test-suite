#include <stdio.h>

int subtest1(int * restrict b, int * restrict c )
{
  int ret ;

  ret = *b + *c ;

  return ret ;

}

