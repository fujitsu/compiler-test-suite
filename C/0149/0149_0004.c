#include <stdlib.h>
#include <stdio.h>
#include <math.h>
enum { a, b, c } s1;
enum { d, e, f = 10 } s2;
int main()
{
  s1 = b;
  s2 = f;
 
  if (s1 == 1)
      printf("***** CATEGORY - 01 ***** O K *****\n");
    else
      printf("***** CATEGORY - 01 ***** N G *****\n");
 
  if (s2 == 10)
      printf("***** CATEGORY - 02 ***** O K *****\n");
    else
      printf("***** CATEGORY - 02 ***** N G *****\n");
exit (0);
}
