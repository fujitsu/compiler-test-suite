
#include <stdio.h>

typedef struct TEST_TAG {
  double value;
  double *pointer;
} test_t;

double target2 = 3.;

extern const test_t target = { 2 , &target2};

extern       test_t *xx  = &target;  
extern test_t * const xxx = &target;  
test_t          *z = &target;         
test_t   * const v = &target;         

static test_t         *t = &target;  
static test_t   * const u = &target;  


int foo() {
  static test_t         *j = &target;     
  static test_t   * const k = &target;     

  if( j->value   != 2 ) puts("NG10");
  if( k->value   != 2 ) puts("NG11");

  if( *(j->pointer)   != 3 ) puts("NG10");
  if( *(k->pointer)   != 3 ) puts("NG11");

  if( j    != &target ) puts("NG10-2");
  if( k    != &target ) puts("NG11-2");
}


int main()
{
  foo();

  if( xx->value  != 2 ) puts("NG1");
  if( xxx->value != 2 ) puts("NG2");
  if( z->value   != 2 ) puts("NG4");
  if( v->value   != 2 ) puts("NG5");

  if( t->value   != 2 ) puts("NG7-1");
  if( u->value   != 2 ) puts("NG8-1");

  if( *(xx->pointer)  != 3 ) puts("NG1");
  if( *(xxx->pointer) != 3 ) puts("NG2");
  if( *(z->pointer)   != 3 ) puts("NG4");
  if( *(v->pointer)   != 3 ) puts("NG5");

  if( *(t->pointer)   != 3 ) puts("NG7-2");
  if( *(u->pointer)   != 3 ) puts("NG8-2");

  if(  xx  != &target ) puts("NG1-2");
  if(  xxx != &target ) puts("NG2-2");
  if(  z   != &target ) puts("NG4-2");
  if(  v   != &target ) puts("NG5-2");

  if(  t   != &target ) puts("NG7-3");
  if(  u   != &target ) puts("NG8-3");

  puts("PASS");
}

