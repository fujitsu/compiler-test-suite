#include <stdlib.h>
#include <stdio.h>
int main()
{
	int i ;
        float *sca, *ary ;
        float aca[1]={10.0}, v1=100.0 ;

	printf("=== p074089ex start ===\n") ;
        if ( 1 == 3/3 ) {
          ary = aca ;
          sca = &v1 ;
        }

        for ( i=1; i<10; i++ ) {
          aca[(i/i)-1]  =(i+1)* *ary ;	
          v1		=(i+1)* *sca ;	
	}
        if (   aca[0] != 36288000.0
	    || v1     != 362880000.0 ) printf("*** NG ***\n") ;
	else			       printf("=== OK \n") ;

	printf("=== p074089ex  end ===\n");
	exit( 0 ) ;
}
