#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 
   struct tag {
      int  a;
      int  b;
      int  c;
   } st;
 
   int  i1=1,i2=0;
   char c1=2,c2=2;
int main()  {
 
   struct tag f1();
   struct tag y;
 
   int  *f2(),f3();
   int  aa=0;       
   int  *i=&aa;
 
 printf(" TEST-START \n");
 
   y=f1();
   if(y.a==1)
     printf(" 1-1 TEST -O  K- \n");
   else
     printf(" 1-1 TEST - NG - \n");
 
   *i=*f2();
   if(*i!=0)
     printf(" 2-1 TEST -O  K- \n");
   else
     printf(" 2-1 TEST - NG - \n");
 
   i2=f3();
   if(i2==4)
     printf(" 3-1 TEST -O  K- \n");
   else
     printf(" 3-1 TEST - NG - \n");
 
 printf(" TEST-END \n");
exit (0);
}
 
 struct tag f1()  {
   struct tag x;
   x.a=1;
   return(x);
 }
 
 int *f2() {
   return(&i1);
 }
 
 int f3() {
   i1++;
   return(c1+c2);
 }
