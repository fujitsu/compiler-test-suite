#include <stdio.h>
#include "000.h"

test29    ts[count_max];
test29    ts1[count_max];
test29    ts2[count_max];

int main()
{

    int     ans;
    int     i, j;

    ans = 0;
    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
            ts[i].a[j]  = 0;    
            ts1[i].a[j] = 1;    
            ts2[i].a[j] = 1;
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
             ts[i].a[j] = ts1[i].a[j] + ts2[i].a[j];
        }
    }

    for( i = 0; i < count_max; i++)
    {
        for( j = 0; j < hairt_max; j++)
        {
             ans += ts[i].a[j];
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
