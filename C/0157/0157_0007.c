
#include <stdio.h>

typedef int (*func_t)();

int target_func() { return 2; }

extern func_t        xx  = &target_func;  
extern func_t  const xxx = &target_func;  
func_t               z   = &target_func;  
func_t         const v   = &target_func;  

static func_t        t   = &target_func;  
static func_t  const u   = &target_func;  


int foo() {
  static func_t        j = &target_func;   
  static func_t  const k = &target_func;   

  if( j()   != 2 ) puts("NG10");
  if( k()   != 2 ) puts("NG11");

  if( j    != &target_func ) puts("NG10-2");
  if( k    != &target_func ) puts("NG11-2");
}


int main()
{
  foo();

  if( xx()  != 2 ) puts("NG1");
  if( xxx() != 2 ) puts("NG2");
  if( z()   != 2 ) puts("NG4");
  if( v()   != 2 ) puts("NG5");

  if( t()   != 2 ) puts("NG7");
  if( u()   != 2 ) puts("NG8");

  if(  xx  != &target_func ) puts("NG1-2");
  if(  xxx != &target_func ) puts("NG2-2");
  if(  z   != &target_func ) puts("NG4-2");
  if(  v   != &target_func ) puts("NG5-2");

  if(  t   != &target_func ) puts("NG7-2");
  if(  u   != &target_func ) puts("NG8-2");

  puts("PASS");
}

