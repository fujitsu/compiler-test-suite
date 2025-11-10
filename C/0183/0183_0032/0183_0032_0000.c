#include <stdio.h>
#include "000.h"

test35    ts[count_max][count_max][count_max];
test35    ts1[count_max][count_max][count_max];
test35    ts2[count_max][count_max][count_max];

int main()
{

    int     ans;
    int     i, j, k, l;

    ans = 0;
    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < count_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                    ts[i][j][k].a[l]  = 0;    
                    ts1[i][j][k].a[l] = 1;    
                    ts2[i][j][k].a[l] = 1;
                }
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < count_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                    ts[i][j][k].a[l] = ts1[i][j][k].a[l] + ts2[i][j][k].a[l];
                }
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < count_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                    ans += ts[i][j][k].a[l];
                }
            }
        }
    }
    
    if( ans == ANSWER )
    {
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}
