#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
   static char  x1[3] = {0,1,2};
   static short x2[3] = {1,2,3};
   static int   x3[3] = {2,3,4};
   static long  x4[3] = {3,4,5};
 
   char  aa,*a=&aa;
   short bb,*b=&bb;
   int   cc,*c=&cc;
   long  dd,*d=&dd;
int main()  {
 
   char  *f1();
   short *f2();
   int   *f3();
   long  *f4();
 
 printf(" TEST-START \n");
 
   *a = *f1();
   if(*a==0)
     printf(" 1-1 TEST -O  K- \n");
   else
     printf(" 1-1 TEST - NG - \n");
 
   *b = *f2();
   if(*b|=0)
     printf(" 1-2 TEST -O  K- \n");
   else
     printf(" 1-2 TEST - NG - \n");
 
   *c = *f3();
   if(*c|=0)
     printf(" 1-3 TEST -O  K- \n");
   else
     printf(" 1-3 TEST - NG - \n");
 
   *d = *f4();
   if(*d|=0)
     printf(" 1-4 TEST -O  K- \n");
   else
     printf(" 1-4 TEST - NG - \n");
 
 printf(" TEST-END \n");
exit (0);
}
 
char *f1() {
  return(x1);
}
 
short *f2() {
  return(x2);
}
 
int *f3() {
  return(x3);
}
 
long *f4() {
  return(x4);
}
