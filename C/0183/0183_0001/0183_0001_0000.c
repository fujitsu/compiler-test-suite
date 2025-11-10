#include <stdio.h>
#include "000.h"

int main()
{
    test03    ts;
    int       ans;
    int       i, j, k, l;

    for( i = 0; i < count_max; i++ )
    {
        ts.a[i] = 1;
        ts.b[i] = 1;
        ts.c[i] = 1;
    }

    for( j = 0; j < count_max; j++ )
    {
        ts.a[j] = ts.b[j] + ts.c[j];
        for( k = 0; k < count_max; k++ )
	{
	    ts.b[k] = ts.a[k] + ts.c[k];
            for( l = 0; l < count_max; l++ )
	    {
	      ts.c[l] = ts.a[l] + ts.b[l];
            }
        }
    }

    ans = ts.a[99] + ts.b[99] + ts.c[99];

    if( ans == ANSWER)
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}
