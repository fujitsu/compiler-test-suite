#include <stdio.h>

union  tag2 { int i,j; };

int f4(union tag2 f(void), union tag2 *un)
 {
   int a, b;
   b = f().i; 
   if(b==1)
     printf("OK\n");

   a =un->i;
 }

union tag2 unfnc(void)
 {
 union tag2 un;
 un.i =	1;
 return un;
 }
int main()
 {
   static union  tag2  un1 = {-1};
   static union  tag2  *una   = &un1;
   f4(unfnc,una);
 }

