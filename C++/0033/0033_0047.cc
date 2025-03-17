#include <stdio.h>
#define OK    printf("ok\n");
#define NG(i) printf("ng %d\n",i);
int main()
{
  char c = 0x12;
  unsigned char uc = 0x12;
  signed char sc = 0x12;
  short s = 0x1234;
  unsigned short us = 0x1234;
  int i = 0x12345678;
  unsigned int ui = 0x12345678;
  long l = 0x12345678;
  unsigned long ul = 0x1234568;
  long long ll = 0x12345678;
  unsigned long long ull = 0x12345678;
  int work = 0;
  char wc;

#pragma omp parallel
  wc = c ^ c;  if ( wc != 0x00 ){ work = 1; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c ^ uc; if ( wc != 0x12 ){ work = 2; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c ^ sc; if ( wc != 0x00 ){ work = 3; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c ^ s;  if ( wc != 0x34 ){ work = 4; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c^ us;  if ( wc != 0x00 ){ work = 5; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c^ i;   if ( wc != 0x78 ){ work = 6; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c ^ ui; if ( wc != 0x00 ){ work = 7; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c ^ l;  if ( wc != 0x78 ){ work = 8; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c ^ ul; if ( wc != 0x10 ){ work = 8; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c ^ ll; if ( wc != 0x68 ){ work = 9; NG( work ); } else{ c = wc; };
#pragma omp parallel
  wc = c ^ ull;if ( wc != 0x10 ){ work = 10; NG( work ); } else{ c = wc; };

  if ( !work )
    printf("ok\n");
}
