#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int fun4 (int a4);
int fun3 (int a3);
int fun2 (int a2);
int fun1 (int a1);
 int r1,r2,r3,r4,m1=0,m2=0;
int fun8 (int a8)
{
   return(++a8);
}
int fun7 (int a7)
{
  return(fun8(a7)+1);
}
int fun6 (int a6)
{
   return(fun7(a6)+1);
}
int fun5 (int a5)
{
   int i5=0;
   i5=a5++ + ++i5;
   i5=fun6(i5);
   return(i5);
}
int main (void)
{
   r3=5;
   r4=10;
   r1=fun5(m1);
   r3=15;
   r4=20;
   r2=fun1(m2);
   r3=25;
   r4=30;
   if(r1 == 4 && r2 == 4){
      printf("*** OK * r1,r2 **\n");
      printf("***** MPTEST45 OK *****\n");
   } else {
      printf("*** NG * r1 = %d , r2 = %d ***\n",r1,r2);
      printf("***** MPTEST45 NG *****\n");
   }
exit (0);
}
int fun1 (int a1)
{
   int i1=0;
   i1=a1++ + ++i1;
   i1=fun2(i1);
   return(i1);
}
int fun2 (int a2)
{
   return(fun3(a2)+1);
}
int fun3 (int a3)
{
   return(fun4(a3)+1);
}
int fun4 (int a4)
{
   return(++a4);
}
