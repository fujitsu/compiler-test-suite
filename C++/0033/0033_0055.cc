#include <stdio.h>
#define OK    printf("ok\n");
#define NG(i) printf("ng %d\n",i);
#define INI \
  c = 0x12;\
  uc = 0x12;\
  sc = 0x12;\
  s = 0x1234;\
  us = 0x1234;\
  i = 0x12345678;\
  ui = 0x12345678; \
  l = 0x12345678;\
  ul = 0x1234568;\
  ll = 0x12345678;\
  ull = 0x12345678;
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

  int wc,work=0;

#pragma omp parallel
  wc = c % c;   if( wc == 0x00 ) work++; else NG(1)  INI
#pragma omp parallel
  wc = c % uc;  if( wc == 0x00 ) work++; else NG(2)  INI
#pragma omp parallel
  wc = c % sc;  if( wc == 0x00 ) work++; else NG(3)  INI
#pragma omp parallel
  wc = c % s;   if( wc == 0x12 ) work++; else NG(4)  INI
#pragma omp parallel
  wc = c % us;  if( wc == 0x12 ) work++; else NG(5)  INI
#pragma omp parallel
  wc = c % i;   if( wc == 0x12 ) work++; else NG(6)  INI
#pragma omp parallel
  wc = c % ui;  if( wc == 0x12 ) work++; else NG(7)  INI
#pragma omp parallel
  wc = c % l;   if( wc == 0x12 ) work++; else NG(8)  INI
#pragma omp parallel
  wc = c % ul;  if( wc == 0x12 ) work++; else NG(9)  INI
#pragma omp parallel
  wc = c % ll;  if( wc == 0x12 ) work++; else NG(10) INI
#pragma omp parallel
  wc = c % ull; if( wc == 0x12 ) work++; else NG(11) INI

  if ( work==11 )
    OK
}
