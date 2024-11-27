#include <stdio.h>
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
   union t z;
   union t x = {0x00,0xff,0x00,0xff,0x00,0xff,0x00,0xff};
int main( ) {

#if _WIN32 || __x86_64__ || i386 || __aarch64__
  z.i=0xff00ff00ff00ff00ULL;
#else
  z.i=0x00ff00ff00ff00ffULL;
#endif

  if ((z.bit64.a == x.bit64.a) &&  
      (z.bit64.b == x.bit64.b) &&
      (z.bit64.c == x.bit64.c) &&
      (z.bit64.d == x.bit64.d) &&
      (z.bit64.e == x.bit64.e) &&
      (z.bit64.f == x.bit64.f) &&
      (z.bit64.g == x.bit64.g) )
                            printf(" -(1) ok\n");
  if (z.i == x.i)  
                            printf(" -(2) ok\n");
}
