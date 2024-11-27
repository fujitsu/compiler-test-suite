#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (float a[100], float r);
int set (float a[100], float v);
int 
main (void)
      {  
        int i ;
        static float a[500]={2.0}, b[500]={3.0}, c[500]={4.0} ;
        printf("*** addrs2 begin *** \n") ;
        set(a,2.0) ;
        set(b,3.0) ;
        set(c,4.0) ;

        for (i=1; i<=101; i++) a[i-1]=b[i-1]-c[i-1] ; 
        sub(a,-1.0) ;                          

        for (i=1; i<=101; i++) a[i-1]=c[i-1]-b[i-1] ; 
        sub(a, 1.0) ;                          

        for (i=1; i<=101; i++) b[i-1]=a[i-1]-c[i-1] ; 
        sub(b,-3.0) ;                           

        for (i=1; i<=101; i++) b[i-1]=c[i-1]-a[i-1] ;
        sub(b, 3.0) ;                         

        for (i=1; i<=101; i++) c[i-1]=a[i-1]-b[i-1] ;
        sub(c,-2.0) ;                         

        for (i=1; i<=101; i++) c[i-1]=b[i-1]-a[i-1] ;
        sub(c, 2.0) ;                          

        printf("*** addrs2 end   *** \n") ;
exit (0);
      }

int set (float a[100], float v)
      {
        int i ;       
        for (i=0; i<=100; i++) a[i]=v ; 
      }

int sub (float a[100], float r)
      {
        int i,j=0 ;
        for (i=0; i<=100; i++)  if(a[i]!=r) j++ ;
        if(j==0)  printf("*** ok *** \n") ;
        else      printf("*** ng *** \n") ;
      }


