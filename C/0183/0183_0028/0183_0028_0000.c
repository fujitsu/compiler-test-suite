#include <stdio.h>
#include "000.h"

test31    ts[count_max];
test31    ts1[count_max];
test31    ts2[count_max];

int main()
{

    int     ans;
    int     i, j, k, l;

    ans = 0;
    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                    ts[i].a[j][k][l]  = 0;    
                    ts1[i].a[j][k][l] = 1;    
                    ts2[i].a[j][k][l] = 1;
                }
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                     ts[i].a[j][k][l] = ts1[i].a[j][k][l] + ts2[i].a[j][k][l];
                }
            }
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
            for( k = 0; k < hairt_max; k++)
            {
                for( l = 0; l < hairt_max; l++)
                {
                    ans += ts[i].a[j][k][l];
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
