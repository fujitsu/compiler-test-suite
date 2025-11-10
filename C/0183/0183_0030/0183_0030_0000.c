#include <stdio.h>
#include "000.h"

test33    ts[count_max][count_max];
test33    ts1[count_max][count_max];
test33    ts2[count_max][count_max];

int main()
{

    int     ans;
    int     i, j, k, l;

    ans = 0;
    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                    ts[i][j].a[k][l]  = 0;    
                    ts1[i][j].a[k][l] = 1;    
                    ts2[i][j].a[k][l] = 1;
                }
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                     ts[i][j].a[k][l] = ts1[i][j].a[k][l] + ts2[i][j].a[k][l];
                }
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                     ans += ts[i][j].a[k][l];
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
