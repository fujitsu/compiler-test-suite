#include <stdio.h>
union t {
          struct s {
#if _WIN32 || __x86_64__ || i386 || __aarch64__
            unsigned long long int h:8;
            unsigned long long int g:8;
            unsigned long long int f:8;
            unsigned long long int e:8;
            unsigned long long int d:8;
            unsigned long long int c:8;
            unsigned long long int b:8;
            unsigned long long int a:8;
#else
            unsigned long long int a:8;
            unsigned long long int b:8;
            unsigned long long int c:8;
            unsigned long long int d:8;
            unsigned long long int e:8;
            unsigned long long int f:8;
            unsigned long long int g:8;
            unsigned long long int h:8;
#endif
          } bit64;
         unsigned long long int i;
} ;
int sub2(long long int j, union t x);
int sub(union t x);
int main( ) {
  union t x;
  x.i=0x0001020304050607ULL;
  sub(x);
}
int sub(union t x)
{
  long long int j;
  if (x.i==0x0001020304050607ULL) printf("(0) ok\n");
  for (j=0; j<8LL; j++) {
    sub2(j,x);
  }
  return 0;
}
int sub2(long long int j, union t x)
{
  enum z {i0,i1,i2,i3,i4,i5,i6,i7} i;
  switch(j) {
    case 0: 
            if (x.bit64.a == i0) printf("(1) ok\n");
            break;
    case 1: 
            if (x.bit64.b == i1) printf("(2) ok\n");
            break;
    case 2: 
            if (x.bit64.c == i2) printf("(3) ok\n");
            break;
    case 3: 
            if (x.bit64.d == i3) printf("(4) ok\n");
            break;
    case 4: 
            if (x.bit64.e == i4) printf("(5) ok\n");
            break;
    case 5: 
            if (x.bit64.f == i5) printf("(6) ok\n");
            break;
    case 6: 
            if (x.bit64.g == i6) printf("(7) ok\n");
            break;
    case 7: 
            if (x.bit64.h == i7) printf("(8) ok\n");
            break;
 }
  return 0;
}
