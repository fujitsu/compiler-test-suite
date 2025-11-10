#include <stdio.h>
#include "000.h"

int main()
{
    test19    ts;
    int       i;

    for( i = 0; i < count_max; i++)
    {
        if( i < 5000 )
        {
	  ts.a[i] = 'a';
	}else{
          ts.a[i] = 'b';
        }
    }

    printf("OK\n");

    return 0;
}
