#include <stdio.h>
#include "000.h"

int func( int );

int main()
{
    test18    ts;
    int       i;
    int       ans;

    for( i = 0; i < count_max; i++)
    {
      ans = func( i );
      ts.a[i] = ans;

    }

    if( ts.a[9999] == ANSWER ){
        printf("OK\n");
    }else{
        printf("NG\n");
    }

    return 0;
}    
    
int func(int i ){
    
    int    k;
    int    ans;

    for ( k = i; k < count_max; k++)
    {
        ans = k + 1;
    }

    return ans;

}
