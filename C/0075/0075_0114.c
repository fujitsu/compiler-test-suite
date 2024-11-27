#include <stdlib.h>
#include <stdio.h>
struct  x {
    int a1,a2,a3,a4,a5,a6,a7,a8 ;
} ;
struct xx {
    int a ;
    struct x b ;
} ;
void pri() ;
int main()
{
    int i;
    struct xx  x1;
    struct x   x2;

    printf("=== p074093 start ===\n") ;

    x1.b.a1 = 1 ;
    x1.b.a2 = 2 ;
    x1.b.a3 = 3 ;
    x1.b.a4 = 4 ;
    x1.b.a5 = 5 ;
    x1.b.a6 = 6 ;
    x1.b.a7 = 7 ;
    x1.b.a8 = 8 ;

    pri(x1.b) ;
    x2 = x1.b ;
    pri(x2) ;

    printf("=== p074093  end ===\n");
    exit( 0 ) ;
}

void pri(x)
struct  x x ;
{
    if (   x.a1 != 1 || x.a2 != 2 || x.a3 != 3 || x.a4 != 4 
	|| x.a5 != 5 || x.a6 != 6 || x.a7 != 7 || x.a8 != 8 )
	printf("*** NG ***\n") ;
    else
	printf("=== OK \n") ;
    return ;
}
