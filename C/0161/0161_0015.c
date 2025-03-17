
#include <stdio.h>
int main() {
 int a,b,c[2];
 a = 1 ; b = 3 ; c[0]=1 ;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
  c[0] = a + b;
#else
	asm ("	add	{a},%gr0,%gr31 ") ;
	asm ("	add	{b},%gr0,%gr30 ") ;
	asm ("	add	{c},%gr0,%gr29 ") ;
	asm ("	add	%gr30,%gr31,%gr28") ;
	asm ("	st	%gr28,%gr29,%gr0 ") ;
#endif
 if ( c[0] == 4 ) 
 	printf(" OK c = %d \n",c[0]) ;
 else
 	printf(" NG c = %d \n",c[0]) ;
}
