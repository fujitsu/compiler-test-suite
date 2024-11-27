#include <stdlib.h>
#include <stdio.h>
static int *ibp( int *p ) { return p ; }
int main() {

      static int ibuf[5] = { 1,1,2,2,4 } ;
      int basic[10],i,j1,jji2,jn ;
      int *bp ;

      for ( i=0 ; i < 10 ; i++ )
          basic[i] = 0 ;

      j1 = ibuf[2] ;
      jji2 = 2 ;
      bp = ibp(&basic[1]) ;
      for ( jn=1 ; jn < 5 ;  jn++ ) {
         if ( j1*2 > 0 )
           bp++ ;
         else
           jji2 = j1*4 ;

         *bp = 1 ;
      }
      puts("basic   ") ;
      for ( i=0 ; i < 10 ; i++ )
         printf(" %d",basic[i]) ;
      printf(" jji2=%d\n",jji2) ;
      exit(0) ;
}
