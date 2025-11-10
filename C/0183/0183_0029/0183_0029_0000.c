#include <stdio.h>
#include "000.h"

test32    ts[count_max][count_max];
test32    ts1[count_max][count_max];
test32    ts2[count_max][count_max];

int main()
{

    int     ans;
    int     i, j, k;

    ans = 0;
    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                ts[i][j].a[k]  = 0;    
                ts1[i][j].a[k] = 1;    
                ts2[i][j].a[k] = 1;
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                 ts[i][j].a[k] = ts1[i][j].a[k] + ts2[i][j].a[k];
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < count_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                 ans += ts[i][j].a[k];
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
