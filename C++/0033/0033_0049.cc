#include <stdio.h>
#define OK    printf("ok\n");
#define NG(i) printf("ng %d\n",i);
#define INIT() \
  c = 0x12, _c = 0x2;           \
  uc = 0x12, _uc = 0x2;         \
  sc = 0x12, _sc = 0x2;         \
  s = 0x1234, _s = 0x2;         \
  us = 0x1234, _us = 0x2;       \
  i = 0x12345678, _i = 0x2;     \
  ui = 0x12345678, _ui = 0x2;   \
  l = 0x12345678, _l = 0x2;     \
  ul = 0x12345678, _ul = 0x2;   \
  ll = 0x12345678, _ll = 0x2;   \
  ull = 0x12345678, _ull = 0x2;

  char c = 0x12, _c = 0x2;
  unsigned char uc = 0x12, _uc = 0x2;
  signed char sc = 0x12, _sc = 0x2;
  short s = 0x1234, _s = 0x2;
  unsigned short us = 0x1234, _us = 0x2;
  int i = 0x12345678, _i = 0x2;
  unsigned int ui = 0x12345678, _ui = 0x2;
  long l = 0x12345678, _l = 0x2;
  unsigned long ul = 0x12345678, _ul = 0x2;
  long long ll = 0x12345678, _ll = 0x2;
  unsigned long long ull = 0x12345678, _ull = 0x2;

  int wc = 0,work=0;
int main()
{
#pragma omp parallel
  wc = c >> _c;    if( wc ==0x4 ){;} else { work=1;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _uc;   if( wc ==0x4 ){;} else { work=2;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _sc;   if( wc ==0x4 ){;} else { work=3;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _s;    if( wc ==0x4 ){;} else { work=4;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _us;   if( wc ==0x4 ){;} else { work=5;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _i;    if( wc ==0x4 ){;} else { work=6;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _ui;   if( wc ==0x4 ){;} else { work=7;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _l;    if( wc ==0x4 ){;} else { work=8;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _ul;   if( wc ==0x4 ){;} else { work=9;  NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _ll;   if( wc ==0x4 ){;} else { work=10; NG(work); INIT(); }
#pragma omp parallel
  wc = c >> _ull;  if( wc ==0x4 ){;} else { work=11; NG(work); INIT(); }

  if (!work)
    OK
}
