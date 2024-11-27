#include <stdlib.h>                                                  
#include <stdio.h>
#include <math.h>
#include <stdio.h>
#include <math.h>
int TEST4 (void);
int TEST3 (void);
int TEST2 (void);
int TEST1 (void);
int 
main (void)
 {
     printf(" ** PATTERNTEST **\n");
     printf(" ** PATTERNTEST TEST1 **\n");
      TEST1();
     printf(" ** PATTERNTEST TEST2 **\n");
      TEST2();
     printf(" ** PATTERNTEST TEST3 **\n");
      TEST3();
     printf(" ** PATTERNTEST TEST4 **\n");
      TEST4();
     printf(" TEST OK\n");
exit (0);
 }
 int 
TEST1 (void)
 {
 double    a[100] , b[100] ;
 double    n = 0.0000 ;
 long int  c[100] , d[100] ;
      int  i , j ;
 for(i=0 ; i<100 ; i++)
    {
    a[i] = n ;
    b[i] = n + 100.0 ;
    n += 1.0000 ;
    }
 for(i=0 ; i<100 ; i++)
    {
    c[i] = floor(a[i]) ;
    d[i] = floor(b[i]) ;
    }
 for(i=0 ; i<100 ; i++)
    {
    printf("c[%d] = %ld \n",i,c[i]) ;
    printf("d[%d] = %ld \n",i,d[i]) ;
    }
 }
 int 
TEST2 (void)
 {
 double    a[100] , b[100] , c[100] ;
    int    i , j ;
 for(i=0 ; i<100 ; i++)
   {
   a[i] = 1000.0 - (double)i ;
   b[i] = 500.0 - (double)i ;
   }
 for(i=0 ; i<100 ; i++)
   {
   c[i] = fmod(a[i] , b[i]) ;
   }
 for(i=0 ; i<100 ; i++)
   {
   printf("c[%d] = %g \n",i,c[i]) ;
   }
 }
 int 
TEST3 (void)
 {
 double    a[100] , b[100] , c[100] , d[100] ;
    int    i , j ;
 for(i=0 ; i<100 ; i++)
   {
   a[i] = (double)i ;
   b[i] = 50.0 - (double)i ;
   }
 for(i=0 ; i<100 ; i++)
   {
   c[i] = exp(a[i]) ;
   d[i] = exp(b[i]) ;
   }
 for(i=0 ; i<100 ; i++)
   {
   printf("c[%d] = %g \n",i,c[i]) ;
   printf("d[%d] = %g \n",i,d[i]) ;
   }
 }
 int 
TEST4 (void)
 {
 double    a[100] , b[100] ;
    int    i , j ;
 for(i=0 ; i<100 ; i++)
   {
   a[i] = (double)i ;
   b[i] = 500.0 * (double)i ;
   }
 for(i=0 ; i<100 ; i++)
   {
   a[i] = a[i] - b[i] ;
   }
 for(i=0 ; i<100 ; i++)
   {
   a[i] = fabs(a[i]) ;
   }
 for(i=0 ; i<100 ; i++)
   {
   printf("a[%d] = %g \n",i,a[i]) ;
   }
 }
