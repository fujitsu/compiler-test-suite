#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (float a[500], float r);
int set (float a[500], float v);
int 
main (void)
      {  
        int i ;
        static float a[500], b[500], c[500] ;
        printf("*** addrb1 begin *** \n") ;
        set(a,2.0) ;
        set(b,3.0) ;
        set(c,4.0) ;

        for (i=0; i<=99; i++)
           if(i<=50) a[i]=b[i]+c[i] ;
           else      a[i]=b[i]+c[i] ;

        for (i=99; i<=498; i++)
           if(i<=50) a[i+1]=b[i+1]+c[i+1] ;
           else      a[i+1]=b[i+1]+c[i+1] ;

        sub(a,7.0) ;
        printf("*** addrb1 end   *** \n") ;
exit (0);
      }

      int 
set (float a[500], float v)
      {
        int i ;       
        for (i=0; i<=499; i++) a[i]=v ; 
      }

      int 
sub (float a[500], float r)
      {
        int i,j=0 ;
        for (i=0; i<=499; i++)  if(a[i]!=r) j++ ;
        if(j==0)  printf("*** ok *** \n") ;
        else      printf("*** ng *** \n") ;
      }

