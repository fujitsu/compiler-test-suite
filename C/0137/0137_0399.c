#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#ifdef __STDC__
   void func1(int);
#else
   void func1();
#endif
   int *a[5],b,c;
int main()
     {
        printf("\n*** MPTEST15 -- START ***\n") ;
        b=400 ;
        a[0]=&b ;
        func1(b);
        c=*a[0] ;
        if(c==400)
         printf("*** MPTEST15 CHECK01 OK ***\n");
        else
         printf("*** MPTEST15 CHECK01 NG ***\n");
        printf("\n*** MPTEST15 -- END   ***\n") ;
exit (0);
     }
#ifdef __STDC__
   void func1(int d)
#else
   void func1(d)
   int d;
#endif
     {
        int e;
        d=d+200;
        a[1]=&d;
        e=*a[1];
        if(e==600)
         printf("*** MPTEST15 CHECK02 OK ***\n");
        else
         printf("*** MPTEST15 CHECK02 NG ***\n");
     }
