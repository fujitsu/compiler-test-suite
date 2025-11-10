#include <stdio.h>
#include "000.h"

test34    ts[count_max][count_max];
test34    ts1[count_max][count_max];
test34    ts2[count_max][count_max];

int main()
{

    int     ans;
    int     i, j, k, l, m;

    ans = 0;
    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                    for( m = 0; m < hairt_max; m++)
                    {
                        ts[i][j].a[k][l][m]  = 0;    
                        ts1[i][j].a[k][l][m] = 1;    
                        ts2[i][j].a[k][l][m] = 1;
                    }
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
                    for( m = 0; m < hairt_max; m++)
                    {
                         ts[i][j].a[k][l][m] = ts1[i][j].a[k][l][m] + ts2[i][j].a[k][l][m];
                    }
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
                    for( m = 0; m < hairt_max; m++)
                    {
                         ans += ts[i][j].a[k][l][m];
                    }
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
