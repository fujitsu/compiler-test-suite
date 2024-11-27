#include <stdio.h>
int sub (float a[100], double r);
int set (float a[100], double v);

int main()
      {  
        int i ;
        static float a[500], b[500], c[500] ;
        printf("***  begin *** \n") ;
        set(a,2.0) ;
        set(b,3.0) ;
        set(c,4.0) ;

        for (i=0; i<=  99; i++) a[i+1]=b[i+1]-c[i+1] ;  
        sub(a,-1.0) ;                                  

        for (i=0; i<=  99; i++) a[i+1]=c[i+1]-b[i+1] ; 
        sub(a, 1.0) ;                                  

        for (i=0; i<=  99; i++) b[i+1]=a[i+1]-c[i+1] ;  
        sub(b,-3.0) ;                                   

        for (i=1; i<= 100; i++) b[i]=c[i]-a[i] ;       
        sub(b, 3.0) ;                                  

        for (i=1; i<= 100; i++) c[i]=a[i]-b[i] ;       
        sub(c,-2.0) ;                                  

        for (i=1; i<= 100; i++) c[i]=b[i]-a[i] ;         
        sub(c, 2.0) ;                                  

        printf("***  end   *** \n") ;
      }

      int 
set (float a[100], double v)
      {
        int i ;       
        for (i=1; i<=100; i++) a[i]=v ; 
      }

      int 
sub (float a[100], double r)
      {
        int i,j=0 ;
        for (i=1; i<=100; i++)  if(a[i]!=r) j++ ;
        if(j==0)  printf("*** ok *** \n") ;
        else      printf("*** ng *** \n") ;
      }
