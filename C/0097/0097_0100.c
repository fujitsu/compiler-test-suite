#include <stdio.h>
int sub (float a[100], float r);
int set (float a[100], float v);

int main()
      {
        int i ;
        static float a[1000], b[1000], c[1000] ;
        static float p[1000], q[1000], r[1000] ;
        static float x[1000], y[1000], z[1000] ;
 
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
 
        for (i=1; i<=101; i++) p[i-1]=q[i-1]-r[i-1] ;
        sub(p,-1.0) ;
 
        for (i=2; i<=102; i++) x[i-2]=y[i-2]*z[i-2] ;
        sub(x,72.0) ;

        for (i=1; i<=101; i++) 
         {  
           a[i-1]=b[i-1]-c[i-1] ;
           p[i-1]=q[i-1]*r[i-1] ;
           x[i-1]=y[i-1]+z[i-1] ;
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
