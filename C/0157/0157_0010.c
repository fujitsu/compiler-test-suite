
#include <stdio.h>
#include <math.h>

typedef double (*func_t)(double);

extern func_t        xx  = &sin;  
extern func_t  const xxx = &sin;  
func_t               z   = &sin;  
func_t         const v   = &sin;  

static func_t        t   = &sin;  
static func_t  const u   = &sin;  


int foo() {
  static func_t        j = &sin;   
  static func_t  const k = &sin;   

  if( j(0.0)   != 0. ) puts("NG10");
  if( k(0.0)   != 0. ) puts("NG11");

  if( j    != &sin ) puts("NG10-2");
  if( k    != &sin ) puts("NG11-2");
}


int main()
{
  foo();

  if( xx(0.0)  != 0. ) puts("NG1");
  if( xxx(0.0) != 0. ) puts("NG2");
  if( z(0.0)   != 0. ) puts("NG4");
  if( v(0.0)   != 0. ) puts("NG5");

  if( t(0.0)   != 0. ) puts("NG7");
  if( u(0.0)   != 0. ) puts("NG8");

  if(  xx  != &sin ) puts("NG1-2");
  if(  xxx != &sin ) puts("NG2-2");
  if(  z   != &sin ) puts("NG4-2");
  if(  v   != &sin ) puts("NG5-2");

  if(  t   != &sin ) puts("NG7-2");
  if(  u   != &sin ) puts("NG8-2");

  puts("PASS");
}

