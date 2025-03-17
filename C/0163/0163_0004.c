#include <stdio.h>
#include <stdlib.h>
char a[16];

void test_char_array()
{
   volatile char x;
   x = a[0];
   if( (((int )&a) % 16) != 0 ) abort();
}

short b[8];

void test_short_array()
{
   volatile char x;
   x = b[0];
   if( (((int )&b) % 16) != 0 ) abort();
}

int c[8];

void test_int_array()
{
   volatile char x;
   x = c[0];
   if( (((int )&c) % 16) != 0 ) abort();
}

long d[8];

void test_long_array()
{
   volatile char x;
   x = d[0];
   if( (((int )&d) % 16) != 0 ) abort();
}

float e[8];

void test_float_array()
{
   volatile char x;
   x = e[0];
   if( (((int )&e) % 16) != 0 ) abort();
}

double f[8];

void test_double_array()
{
   volatile char x;
   x = f[0];
   if( (((int )&f) % 16) != 0 ) abort();
}

long double g[8];

void test_long_doulbe_array()
{
   volatile char x;
   x = g[0];
   if( (((int )&g) % 16) != 0 ) abort();
}

struct TAG1 {
   char x;
} h[16];

void test_aggr_array()
{
   volatile char x;
   x = h[0].x;
   if( (((int )&h) % 16) != 0 ) abort();
}

union TAG {
  char x;
  char y;
} i[16];

void test_union_array()
{
   volatile char x;
   x = i[0].x;
   if( (((int )&i) % 16) != 0 ) abort();
}

long double j;

void test_long_doulbe()
{
   volatile char x;
   x = j;
   if( (((int )&j) % 16) != 0 ) abort();
}
int main()
{
#if defined(__x86_64__)
 test_char_array();
 test_short_array();
 test_int_array();
 test_long_array();
 test_float_array();
 test_double_array();
 test_long_doulbe_array();
 test_aggr_array();
 test_union_array();
#endif
  puts("PASS");
}

