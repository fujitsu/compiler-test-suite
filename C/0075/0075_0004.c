#include <stdio.h>
int k ;
void up() { k += 3 ;}
void foo( char *s )
{
    int ki,kp ;
puts(s) ;
    k=0 ;
l:  ki=3+k ;
    up() ;
    kp=ki*2 ;
    printf("%s\n",s+kp) ;
    if ( k<=5 ) goto l ;
    return ;
}
int main() {
  foo( "abcdefg hijklmn opqrstu vwxyz" ) ;
}
