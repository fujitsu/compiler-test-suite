#include <stdlib.h>
#include <stdio.h>
int a,b ;
void foo()
{
    goto entrance ;

err_1:
    if ( a ) b++ ;

entrance:
    if ( b < 0 ) goto err_1;
}
int main()
{
    a=1 ;
    b=-10 ;
    foo() ;
    printf("test end\n");
    exit( 0 ) ;
}
