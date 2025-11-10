#include <stdio.h>
#include "000.h"

int main()
{
    test13    ts;
    int       ans;
    int       i, k, l;

    for( i = 0; i < count_max; i++ ){
        ts.a[i] = 1;
        for( k = 0; k < count_max; k++ ){
            ts.b[i][k] = 1;
            for( l = 0; l < count_max; l++ ){
                ts.c[i][k][l] = 1;
            }
        }
    }

    for( i = 0; i < count_max; i++ )
    {
        ts.a[i] += i;
        for( k = 0; k < count_max; k++ )
	{
	    ts.b[i][k] = ts.a[i] * k;
            for( l = 0; l < count_max; l++ )
	    {
	      ts.c[i][k][l] = ts.a[i] * ts.b[i][k];
            }
        }
    }

    ans = ts.a[99] + ts.b[99][99] + ts.c[99][99][99];

    if( ans == ANSWER)
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}    
    
