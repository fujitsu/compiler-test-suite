#include <stdio.h>
#include "000.h"

int func( int );

test22    ts;

int main()
{
    int       ret;
    int       i;

    for( i = 0; i < count_max; i++)
    {
        if( i < 5000 )
        {
	  ret = func(i);
	}else{
	  ts.a[i] = 'b';
        }
    }
    ts.a[10000] = '\n';

    printf("OK\n");
 
    return 0;
}

int func(int i)
{
    int       k;

    for( k = i; k < 5000; k++)
    {
        ts.a[k] = 'a';
    }
    i = k;

    return 0;
}
