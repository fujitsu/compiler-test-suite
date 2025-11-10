#include <stdio.h>
#include "000.h"

int func( int );

test21    ts;

int main()
{
    int       ret;
    int       i;

    for( i = 0; i < count_max; i++)
    {
        if( i < 5000 )
        {
	    ts.a[i] = 'a';
	}else{
	    ret = func(i);
        }
    }

    printf("OK\n");

    return 0;
}

int func( int i )
{
    int       k;

    for( k = i; k < count_max; k++)
    {
        ts.a[k] = 'b';
    }
    ts.a[10000] = '\n';
    i = k;

    return 0;
}
