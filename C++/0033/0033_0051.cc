#include <stdio.h>
#define OK    printf("ok\n");
#define NG(i) printf("ng %d\n",i);
#define INIT() \
  c = 0x12, _c = 0x2;           \
  uc = 0x12, _uc = 0x2;         \
  sc = 0x12, _sc = 0x2;         \
  s = 0x1234, _s = 0x2;         \
  us = 0x1234, _us = 0x2;       \
  i = 0x12, _i = 0x2;           \
  ui = 0x12, _ui = 0x2;         \
  l = 0x12, _l = 0x2;           \
  ul = 0x1234568, _ul = 0x2;    \
  ll = 0x12, _ll = 0x2;         \
  ull = 0x12, _ull = 0x2;       \
  f = 4.44, _f = 2.0;           \
  d = 8.88, _d = 2.0;           \
  ld = 16.00, _ld = 2.0;

  char c = 0x12, _c = 0x2;
  unsigned char uc = 0x12, _uc = 0x2;
  signed char sc = 0x12, _sc = 0x2;
  short s = 0x1234, _s = 0x2;
  unsigned short us = 0x1234, _us = 0x2;
  int i = 0x12, _i = 0x2;
  unsigned int ui = 0x12, _ui = 0x2;
  long l = 0x12, _l = 0x2;
  unsigned long ul = 0x1234568, _ul = 0x2;
  long long ll = 0x12, _ll = 0x2;
  unsigned long long ull = 0x12, _ull = 0x2;
  float f = 4.44, _f = 2.0;
  double d = 8.88, _d = 2.0;
  long double ld = 16.00, _ld = 2.0;

  float F = f + _f;
  double D = d + _d;
  long double LD = ld + _ld;

  int wc,work=0;
int main()
{
#pragma omp parallel
  wc = c + _c;    if( wc == 0x14 ) work++; else NG(1)   INIT()
#pragma omp parallel
  wc = c + _uc;   if( wc == 0x14 ) work++; else NG(2)   INIT()
#pragma omp parallel
  wc = c + _sc;   if( wc == 0x14 ) work++; else NG(3)   INIT()
#pragma omp parallel
  wc = c + _s;    if( wc == 0x14 ) work++; else NG(4)   INIT()
#pragma omp parallel
  wc = c + _us;   if( wc == 0x14 ) work++; else NG(5)   INIT()
#pragma omp parallel
  wc = c + _i;    if( wc == 0x14 ) work++; else NG(6)   INIT()
#pragma omp parallel
  wc = c + _ui;   if( wc == 0x14 ) work++; else NG(7)   INIT()
#pragma omp parallel
  wc = c + _l;    if( wc == 0x14 ) work++; else NG(8)   INIT()
#pragma omp parallel
  wc = c + _ul;   if( wc == 0x14 ) work++; else NG(9)   INIT()
#pragma omp parallel
  wc = c + _ll;   if( wc == 0x14 ) work++; else NG(10)   INIT()
#pragma omp parallel
  wc = c + _ull;  if( wc == 0x14 ) work++; else NG(11)   INIT()
#pragma omp parallel
  wc = c + _f;    if( wc == 0x14 ) work++; else NG(12)   INIT()
#pragma omp parallel
  wc = c + _d;    if( wc == 0x14 ) work++; else NG(13)   INIT()
#pragma omp parallel
  wc = c + _ld;   if( wc == 0x14 ) work++; else NG(10)   INIT()

  if ( work == 14 )
    OK
}
