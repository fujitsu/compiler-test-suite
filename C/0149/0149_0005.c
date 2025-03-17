#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int exa;
struct { int a; int b; int c; } st,*exb;
int main()
{
  exb = &st;
  st.a = 1;
  st.b = 2;
  st.c = 3;
  exa = 10;
 
  if (exa == 10)
      printf("***** CATEGORY - 01 ***** O K *****\n");
    else
      printf("***** CATEGORY - 01 ***** N G *****\n");
 
  if (exb->b == 2)
      printf("***** CATEGORY - 02 ***** O K *****\n");
    else
      printf("***** CATEGORY - 02 ***** N G *****\n");
exit (0);
}
