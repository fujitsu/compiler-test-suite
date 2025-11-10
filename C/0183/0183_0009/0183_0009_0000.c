#include <stdio.h>
#include "000.h"

int main()
{
    test11    ts;
    int       i, j, k, l;

    for( i = 0; i < count_max; i++){
        for( j = 0; j < count_max; j++){
            ts.a[i][j] = 0;
        }
    }

    for( k = 0; k < count_max; k++){
        for( l = 0; l < count_max; l++){
            ts.a[k][l] = k + l;
        }
    }

    if( ts.a[999][999] = ANSWER ){
        printf("OK\n");
    }else{
        printf("NG\n");
    } 

    return 0;
}
