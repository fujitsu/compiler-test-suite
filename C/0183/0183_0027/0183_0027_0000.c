#include <stdio.h>
#include "000.h"

test30    ts[count_max];
test30    ts1[count_max];
test30    ts2[count_max];

int main()
{

    int     ans;
    int     i, j, k;

    ans = 0;
    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                ts[i].a[j][k]  = 0;    
                ts1[i].a[j][k] = 1;    
                ts2[i].a[j][k] = 1;
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                ts[i].a[j][k] = ts1[i].a[j][k] + ts2[i].a[j][k];
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                ans += ts[i].a[j][k];
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
