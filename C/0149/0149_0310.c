#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   int i,i2,*ip,fnc(),iarry[2];
   enum   entag { en1, en2 } en;
 
   printf("*** CATEGORY ** TEST FOR FE1 ** STARTED ***\n");
 
   i = 0;  i2 = 1;
   if ((i||i2)!=1)
       printf(" *** CATEGORY TEST-01 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-01 OK ***\n");
 
   en = en1;
   if ((i||en)!=0)
       printf(" *** CATEGORY TEST-02 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-02 OK ***\n");
 
   ip = &i2;
   if ((i||ip)!=1)
       printf(" *** CATEGORY TEST-03 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-03 OK ***\n");
 
   if ((i||fnc())!=0)
       printf(" *** CATEGORY TEST-04 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-04 OK ***\n");
 
   iarry[1]=0;
   if ((i2||iarry[1])!=1)
       printf(" *** CATEGORY TEST-05 ERROR ***\n");
   else
       printf(" *** CATEGORY TEST-05 OK ***\n");
 
   printf("*** CATEGORY TEST ENDED ***\n");
exit (0);
}
 
int fnc()
{
  return 0;
}
