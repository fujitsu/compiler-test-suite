#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
   int i ;
   int x,y,z,r1,r2,r3 ;
   int a[5],b[5],c[5];	
   printf ("--- test for software pipelining start ---\n") ;

   for( i=0; i<5; i++) {
     a[i]=10 ;
     b[i]=20 ;
   }

   
   for( i=0;i<5;i++){
     x=a[i] ;
     y=-x ;
     z=b[i] ;
     c[i]=z+y ;
   }
   printf("%d ( correct value is 10 )\n",c[1]) ;
   r1 = c[2] ;

   
   for( i=0;i<5;i++){
     x=a[i] ;
     y=-x ;

     c[i]=b[i]+y*2 ;
   }
   printf("%d ( correct value is 0 )\n",c[1]) ;
   r2 = c[4] ;

   
   for( i=0;i<5;i++){
     x=a[i] ;
     y=-x ;
     x=b[i] ;
     c[i]=x+y ;
   }
   printf("%d ( correct value is 10 )\n",c[1]) ;
   if ( r1 == 10 && r2 == 0 && c[0]==10 )
     printf("   OK\n") ;
   else
     printf("   NG\n") ;
exit (0);
}
