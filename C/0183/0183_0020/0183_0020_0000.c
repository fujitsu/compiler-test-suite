#include <stdio.h>
#include "000.h"

int main()
{

    test23    ts;
    int       ret;
    int       i, k;

    for( i = 0; i < count_max; i++)
    {
      ts.a[i] = i;
    }

    for( k = count_max-1; k >= count_min; k--)
    {
	ts.a[k] = ts.a[k] - k;
    }

    if( ts.a[9999] == ANSWER ){
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}
