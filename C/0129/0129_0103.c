#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int func (int i1, int j1);
 
 int      int0;
int 
main (void)
 {
   int      int1=0,i,j;
   printf(" start\n");
   int0=0;
   if (int1==0)
   {
     i=2;
     j=3;
   }
   else
   {
     i=2;
     j=3;
   }
 
   int1=func(i+1,j+1);
   int1=func(i+2,j+2);
   if ((int1==9)&&(int0==2))
   {
     printf("test-1 **** ok ****\n");
   }
   else
   {
     printf("test-1 **** ng ****\n");
     printf("       int0=%d, right-value=2\n",int0);
     printf("       int1=%d, right-value=9\n",int1);
   }
 
   int1=func(i+3,j+3)+10;
   int1=func(i+4,j+4)+10;
   if ((int1==23)&&(int0==4))
   {
     printf("test-2 **** ok ****\n");
   }
   else
   {
     printf("test-2 **** ng ****\n");
     printf("       int0=%d, right-value=4\n",int0);
     printf("       int1=%d, right-value=23\n",int1);
   }
 
   if (int1==0)
   {
     int1=func(i+5,j+5);
   }
   else
   {
     int1=func(i+5,j+5);
   }
   int1=88;
   if ((int0==5)&&(int1==88))
   {
     printf("test-3 **** ok ****\n");
   }
   else
   {
     printf("test-3 **** ng ****\n");
     printf("       int0=%d, right-value=5\n",int0);
     printf("       int1=%d, right-value=88\n",int1);
   }
 
   if (int1==0)
   {
     int1=func(int1,int1);
   }
   else
   {
     int1=func(int1,int1);
   }
   int1=99;
   if ((int0==6)&&(int1==99))
   {
     printf("test-4 **** ok ****\n");
   }
   else
   {
     printf("test-4 **** ng ****\n");
     printf("       int0=%d, right-value=6\n",int0);
     printf("       int1=%d, right-value=99\n",int1);
   }
   printf(" end\n");
exit (0);
 }

 int 
func (int i1, int j1)
 {
   int0++;
   return i1+j1;
 }
