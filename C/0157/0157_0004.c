
#include <stdio.h>


int foo() {
  const static int target = 2;

  static int         *j = &target;     
  static int   * const k = &target;     

  if( *j   != 2 ) puts("NG10");
  if( *k   != 2 ) puts("NG11");

  if( j    != &target ) puts("NG10-2");
  if( k    != &target ) puts("NG11-2");
}


int main()
{
  foo();

  puts("PASS");
}

