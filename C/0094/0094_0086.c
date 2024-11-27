#include  <stdio.h>
int main() {
register int r1 ;
int reg() ;
short s1,sh()         ;
long  l1,lg()         ;

 r1 = reg(1,2,3) ;
 s1 = sh(1,2,3)  ;
 l1 = lg(1,2,3)  ;

 if ( r1 == 0 ) {
    printf(" OK \n") ;
 } else {
    printf(" NG r1 = %d \n",r1) ;
 }

 if ( s1 == 0 ) {
    printf(" OK \n") ;
 } else {
    printf(" NG s1 = %d \n",s1) ;
 }

 if ( l1 == 0 ) {
    printf(" OK \n") ;
 } else {
    printf(" NG l1 = %d \n",l1) ;
 }

}
int reg(ina, inb, inc) 
int ina,inb,inc ;
{
register int a,b,c ;
static int m[10] = {0} ;
a = ina ;
b = inb ;
c = inc ;

a = a + b + c ;
b = a >> 1 ;
a = b % 10 ;
m[a] = a ;
b = m[a] - b - c ;
a = b == c ;
b = a | c ;
a = !b ;
b = a + c ;
a = b > c ;

return(a) ;
}
short sh(ina, inb, inc)
short ina, inb, inc ;
{
auto short  a,b,c ;
static int m[10] = {0} ;

a = ina ;
b = inc ;
c = inc ;

a = a + b + c ;
b = a >> 1 ;
a = b % 10 ;
m[a] = a ;
b = m[a] - b - c ;
a = b == c ;
b = a | c ;
a = !b ;

return(a) ;

}
long lg(ina, inb, inc)
long ina, inb, inc ;
{
auto long  a,b,c ;
static int m[10] = {0} ;

a = ina ;
b = inb ;
c = inc ;

a = a + b + c ;
b = a >> 1 ;
a = b % 10 ;
m[a] = a ;
b = m[a] - b - c ;
a = b == c ;
b = a | c ;
a = !b ;

return(a) ;

}
