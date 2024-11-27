#include <stdio.h>
#include <setjmp.h>

int dolongj( void *sjp,  int v )
{
   puts("dlongj") ;
   longjmp( sjp, v ) ;
}

int foo( int input, int output )
{
   jmp_buf sj ;
   unsigned char i,j,k,l,m ;
   unsigned char i2,j2,k2,l2,m2 ;
   unsigned char i3,j3,k3,l3,m3 ;
   volatile unsigned char nf = 0 ;
   if ( setjmp( sj ) != 0 ) {
      if ( nf !=1 ) {
         puts("ng") ;
         puts("ng") ;
      }
      return 1 ;
   }
   nf = 1 ;
   dolongj( (void*)&sj, 0 ) ;
   return 0 ;
}
int main() {
  printf ("%d\n",foo( 0, 1 ) ) ;
}

