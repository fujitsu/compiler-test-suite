#include <stdio.h>
#include "000.h"

int main()
{
    test08    ts;
    int       i, j;

    for( i = 0; i < count_max; i++)
    {
        if((i % 2) == 0)
        {
            ts.a[i] = 'a';
        }else{
	    ts.a[i] = 'b';
        }
    }
    ts.a[10000] = '\n';

    printf("OK\n");

    return 0;
}
