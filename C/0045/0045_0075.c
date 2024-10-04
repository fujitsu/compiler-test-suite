#include <stdio.h>
int foo(void *p, void *q);


void test()
{
  float *r4p ;
  int nm = 0, limit;
  while( nm > limit )
    {
      int bi = 0;
      int i;
#if __cplusplus || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
      for( int i = 1; i < nm; i++ );
#else
      for(i = 1; i < nm; i++ );
#endif
      nm--;
      foo( &r4p[bi], &r4p[nm] );
    }
}
int 
main (void)
{
  puts("PASS");
}

int foo(void *p, void *q)
{
}

