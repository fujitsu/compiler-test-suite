
#include <stdio.h>
#include <stdlib.h>

typedef void * (*func_t)(size_t);

extern func_t        xx  = &malloc;  
extern func_t  const xxx = &malloc;  
func_t               z   = &malloc;  
func_t         const v   = &malloc;  

static func_t        t   = &malloc;  
static func_t  const u   = &malloc;  


int foo() {
  static func_t        j = &malloc;   
  static func_t  const k = &malloc;   

  if( j(10)   == 0 ) puts("NG10");
  if( k(10)   == 0 ) puts("NG11");

  if( j    != &malloc ) puts("NG10-2");
  if( k    != &malloc ) puts("NG11-2");
}


int main()
{
  foo();

  if( xx(10)  == 0 ) puts("NG1");
  if( xxx(10) == 0 ) puts("NG2");
  if( z(10)   == 0 ) puts("NG4");
  if( v(10)   == 0 ) puts("NG5");

  if( t(10)   == 0 ) puts("NG7");
  if( u(10)   == 0 ) puts("NG8");

  if(  xx  != &malloc ) puts("NG1-2");
  if(  xxx != &malloc ) puts("NG2-2");
  if(  z   != &malloc ) puts("NG4-2");
  if(  v   != &malloc ) puts("NG5-2");

  if(  t   != &malloc ) puts("NG7-2");
  if(  u   != &malloc ) puts("NG8-2");

  puts("PASS");
}

