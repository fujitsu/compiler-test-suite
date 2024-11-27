#include <stdlib.h>
#include <stdio.h>
#include <math.h>
union t {
          struct s {
            unsigned long long int a:8;
            unsigned long long int b:8;
            unsigned long long int c:8;
            unsigned long long int d:8;
            unsigned long long int e:8;
            unsigned long long int f:8;
            unsigned long long int g:8;
            unsigned long long int h:8;
          } bit64;
         unsigned long long int i;
} ;
int main( ) {
   union t z;
   union t x = {0x00,0xff,0x00,0xff,0x00,0xff,0x00,0xff};

  z.i=0xff00ff00ff00ff00LL;
  if ((z.bit64.a == z.bit64.c)  
   == (z.bit64.e == z.bit64.g))
                            printf("kaimk2051-(1) ok\n");
  if ((z.bit64.b == z.bit64.d)  
   == (z.bit64.f == z.bit64.h))
                            printf("kaimk2051-(2) ok\n");
  z.i=0x00ff00ff00ff00ffLL;

  if ((z.bit64.a == z.bit64.c)  
   == (z.bit64.e == z.bit64.g))
                            printf("kaimk2051-(3) ok\n");
  if ((z.bit64.b == z.bit64.d)  
   == (z.bit64.f == z.bit64.h))
                            printf("kaimk2051-(4) ok\n");
  if ((x.bit64.a == x.bit64.c)  
   == (x.bit64.e == x.bit64.g))
                            printf("kaimk2051-(5) ok\n");
  if ((x.bit64.b == x.bit64.d)  
   == (x.bit64.f == x.bit64.h))
                            printf("kaimk2051-(6) ok\n");
#if defined(sparc)
  if (x.i==0x00ff00ff00ff00ffLL)
#else
    if (x.i==0xff00ff00ff00ff00LL)
#endif
                            printf("kaimk2051-(7) ok\n");

exit (0);
}
          
