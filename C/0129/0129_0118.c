#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sub (int *c);
int main()
 {
   
   
   
   
   int a,b,c;
   a=1;
   b=1;
   c=2;
   sub(&c);
   if (c==1)
   printf("--- ng ---\n");
   else
   printf("--- ok ---\n");
exit (0);
 }
 int 
sub (int *c)
 {
 }
