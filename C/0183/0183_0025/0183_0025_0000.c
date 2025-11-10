#include <stdio.h>
#include "000.h"

test28    ts[count_max][count_max];

int main()
{

    int     i, k, j, l;

    for( i = 0; i < count_max; i++)
    {
        for( k = 0; k < count_max; k++ )
        {
	    for( j = 0; j < hairt_max; j++ )
	    {
                for( l = 0; l < hairt_max; l++ )
	        {
                    ts[i][k].a[j][l] = 'a';
                }
            }
        }
    }

    if( ts[999][999].a[4][4] == 'a' )
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}
