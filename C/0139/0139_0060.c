#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  


#define  f1(a)  a*g1
#define  g1     f1

#define  f2(a)  a*g2
#define  g2(a)  f2(a)

#define  x(a)  # a
#define  y(a)  x(a)
int main()
{
  printf(" \n\n");


  if (!memcmp(y(f1(2)(9)),"2*f1(9)",7))
      printf(" *** \n");
  else
      printf(" *** \n");


  if (!memcmp(y(f2(2)(9)),"2*9*g2",6))
      printf(" *** \n");
  else
      printf(" *** \n");


  printf(" \n\n");
exit (0);
}
