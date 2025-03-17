
#include <stdio.h>

int target = 2;

extern       int *xx  = &target;  
extern int * const xxx = &target;  
int          *z = &target;         
int   * const v = &target;         

static int         *t = &target;  
static int   * const u = &target;  


int foo() {
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

  if( *xx  != 2 ) puts("NG1");
  if( *xxx != 2 ) puts("NG2");
  if( *z   != 2 ) puts("NG4");
  if( *v   != 2 ) puts("NG5");

  if( *t   != 2 ) puts("NG7");
  if( *u   != 2 ) puts("NG8");

  if(  xx  != &target ) puts("NG1-2");
  if(  xxx != &target ) puts("NG2-2");
  if(  z   != &target ) puts("NG4-2");
  if(  v   != &target ) puts("NG5-2");

  if(  t   != &target ) puts("NG7-2");
  if(  u   != &target ) puts("NG8-2");

  puts("PASS");
}

