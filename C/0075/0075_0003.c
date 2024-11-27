#include <stdio.h>
int k ;
void up() { k += 3 ;}
void foo( char *s )
{
    int ki,kp,km ;
puts(s) ;
    k=0 ;
l:  km=k+2 ;
    kp=km-1 ;
    up() ;
    printf("%s\n",s+kp) ;
    if ( k<=5 ) goto l ;
    return ;
}
int main() {
  foo( "abcdefg hijklmn opqrstu vwxyz" ) ;
}
