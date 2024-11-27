#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
   struct  t1  {
     int  a ;
     char b ;
               } ;
   int func1(q)
       struct  t1 q;
   {
       q.a=q.a+1;
       return(q.a);
   }
int main()
   {
       struct t1 p ; int i;
       int func1();
       p.a=3 ;
       p.b='9' ;
       i = func1(p) ;
       if(i==4)
        printf("*** MPTEST18 OK ***\n") ;
       else
        printf("*** MPTEST18 NG ***\n") ;
exit (0);
   }
