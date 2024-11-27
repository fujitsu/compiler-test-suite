#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (float a[100], float r);
int set (float a[100], float v);
int 
main (void)
      {
        int i ; 
        static float a[1000]={1.0}, b[1000]={2.0}, c[1000]={3.0} ;
        static float p[1000]={4.0}, q[1000]={5.0}, r[1000]={6.0} ;
        static float x[1000]={7.0}, y[1000]={8.0}, z[1000]={9.0} ;
 
        printf("*** addrs3 begin *** \n") ;

        set(a,1.0) ;
        set(b,2.0) ;
        set(c,3.0) ;
        set(p,4.0) ;
        set(q,5.0) ;
        set(r,6.0) ;
        set(x,7.0) ;
        set(y,8.0) ;
        set(z,9.0) ;
 
        for (i=1; i<=101; i++) a[i-1]=b[i-1]+c[i-1] ;
        sub(a, 5.0) ; 
 
        for (i=2; i<=102; i++) p[i-2]=q[i-2]-r[i-2] ;
        sub(p,-1.0) ;
 
        for (i=3; i<=103; i++) x[i-3]=y[i-3]*z[i-3] ;
        sub(x,72.0) ;

        for (i=4; i<=104; i++) 
         {  
           a[i-4]=b[i-4]-c[i-4] ;
           p[i-4]=q[i-4]*r[i-4] ;
           x[i-4]=y[i-4]+z[i-4] ;
         }
        sub(a,-1.0) ;  
        sub(p,30.0) ;
        sub(x,17.0) ;

        printf("*** addrs3 end   *** \n") ;
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
