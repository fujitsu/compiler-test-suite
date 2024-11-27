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
int sub2 (long long int j, union t x);
int sub (union t x);
int main (void) {
  union t x;
#if defined(sparc)
  x.i=0x0001020304050607LL;
#else
  x.i=0x0706050403020100LL;
#endif
  sub(x);
exit (0);
}
int sub (union t x)
{
  long long int j;
#if defined(sparc)
  if (x.i==0x0001020304050607LL) printf("kaimk2053-(0) ok\n");
#else
  if (x.i==0x0706050403020100LL) printf("kaimk2053-(0) ok\n");
#endif
  for (j=0; j<8LL; j++) {
    sub2(j,x);
  }
}
int sub2 (long long int j, union t x)
{
  enum z {i0,i1,i2,i3,i4,i5,i6,i7} i;
  switch(j) {
    case 0: 
            if (x.bit64.a == i0) printf("kaimk2053-(1) ok\n");
            break;
    case 1: 
            if (x.bit64.b == i1) printf("kaimk2053-(2) ok\n");
            break;
    case 2: 
            if (x.bit64.c == i2) printf("kaimk2053-(3) ok\n");
            break;
    case 3: 
            if (x.bit64.d == i3) printf("kaimk2053-(4) ok\n");
            break;
    case 4: 
            if (x.bit64.e == i4) printf("kaimk2053-(5) ok\n");
            break;
    case 5: 
            if (x.bit64.f == i5) printf("kaimk2053-(6) ok\n");
            break;
    case 6: 
            if (x.bit64.g == i6) printf("kaimk2053-(7) ok\n");
            break;
    case 7: 
            if (x.bit64.h == i7) printf("kaimk2053-(8) ok\n");
            break;
 }
}
