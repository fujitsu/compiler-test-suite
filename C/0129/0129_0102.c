#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int func (void);
 
 
 
 
 
int main()
 {
   printf(" start\n");
   func();
   printf(" end\n");
exit (0);
 }
 int 
func (void)
 {
   static int int1[9]={1,2,3,4,5,6,7,8,8};
   int i;
   i=0;
   for(;;)
   {
     if (int1[i]==8)
     {
       return 0;
     }
     if (i==5)
     {
       i=7;
     }
     i++;
   }
   return 0;
 }
