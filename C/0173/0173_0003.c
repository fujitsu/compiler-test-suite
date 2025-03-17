#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define OPR  ^

typedef signed char test_t;
typedef test_t * restrict test_ptr_t;

void test(test_ptr_t p, test_ptr_t q)
{
   int i;
   for( i=0;i<100;i++ ) {
      p[i] = q[i] OPR 3;
   }
}


int main()
{
  int i;
  test_t *p,*q;
  p = malloc(100*sizeof(test_t)); 
  q = malloc(100*sizeof(test_t)); 
  memset(p, 0, 100*sizeof(test_t));

  for( i=0;i<100;i++ ) {
     q[i] = i;
  }

  test(p, q);

  if( (p[0] == (0 OPR 3)) &&
      (p[10] == (10 OPR 3)) &&
      (p[20] == (20 OPR 3)) ) {
    puts("PASS");
  }
  else {
    puts("NG");
  } 
}

