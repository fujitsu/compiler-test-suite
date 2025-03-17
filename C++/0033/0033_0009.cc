#include <stdio.h>

struct { char c; short s:1; }aa={1}; 
int main()
{
  short s1,s2;
  struct { char c; short s:1; }a={1}; 
#pragma omp parallel
 {
   aa.s = 1;
   a.s = 1;
   s1 = a.s;
   s2 = aa.s;
 }
#if __GNUC__
  if (a.s == -1 && s1 == -1 && s2 == -1)
#else
  if (a.s == 1 && s1 == 1 && s2 == 1)
#endif
    printf("ok\n");
  else
    printf("ng\n");
}
