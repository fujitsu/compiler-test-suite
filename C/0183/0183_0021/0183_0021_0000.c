#include <stdio.h>
#include "000.h"

int func01( int );
int func02( int );

test24    ts;

int main()
{

    int       ret;
    int       i, k;

    for( i = count_min; i < count_max; i++)
    {
        if( i < count_mid2 )
        {
            ret = func01(i);
        }else{
	    ts.a[i] = 'c';
        }
    }
    ts.a[999] = '\n';

    printf("OK\n");

    return 0;
}

int func01(int i)
{
    int       k;
    int       ret;

    for( k = i; k < count_mid2; k++)
    {
        if( k < count_mid1 )
	{
            ret = func02(k);
        }else{
	    ts.a[k] = 'b';
        }
    }
    i = k;

    return 0;
}

int func02(int k)
{
    int       j;

    for( j = k; j < count_mid1; j++)
    {
        ts.a[j] = 'a';
    }
    k = j;

    return 0;
}
