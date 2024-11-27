#include <stdio.h>
int sub (float a[100], float r);
int set (float a[100], float v);

int main()
      {
        int i ;
        static float a[1000], b[1020], c[1021] ;
        static float p[1022], q[1023], r[1024] ;
        static float x[1025], y[1026], z[1027] ;
 
        printf("***  begin *** \n") ;

        set(a,1.0) ;
        set(b,2.0) ;
        set(c,3.0) ;
        set(p,4.0) ;
        set(q,5.0) ;
        set(r,6.0) ;
        set(x,7.0) ;
        set(y,8.0) ;
        set(z,9.0) ;
 
        for (i=0; i<=100; i++) a[i]=b[i]+c[i] ;
        sub(a, 5.0) ; 
 
        for (i=0; i<=100; i++) p[i]=q[i]-r[i] ;
        sub(p,-1.0) ;
 
        for (i=0; i<=100; i++) x[i]=y[i]*z[i] ;
        sub(x,72.0) ;

        for (i=0; i<=100; i++) 
         {  
           a[i]=b[i]-c[i] ;
           p[i]=q[i]*r[i] ;
           x[i]=y[i]+z[i] ;
         }
        sub(a,-1.0) ;  
        sub(p,30.0) ;
        sub(x,17.0) ;

        printf("***  end   *** \n") ;
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

