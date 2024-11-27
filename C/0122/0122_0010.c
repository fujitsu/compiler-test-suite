#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int a = 0; 
int main()
{
  int *p = &a;
  
  if (*p == 0) { printf("ok\n"); }
exit (0);
}
