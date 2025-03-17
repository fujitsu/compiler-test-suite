#include <stdio.h>
#include <stdlib.h>

#define TEST_SIZE   100000

  signed char      i1[TEST_SIZE];
  signed short     i2[TEST_SIZE];
  signed int       i4[TEST_SIZE];
  signed long long i8[TEST_SIZE];
unsigned char      u1[TEST_SIZE];
unsigned short     u2[TEST_SIZE];
unsigned int       u4[TEST_SIZE];
unsigned long long u8[TEST_SIZE];

#define  TEST_TYPE   u4

void to_i1()
{
  int i;
  for(i=0;i<100000;i++) {
    i1[i] = TEST_TYPE[i];
  }
}

void to_i2()
{
  int i;
  for(i=0;i<100000;i++) {
    i2[i] = TEST_TYPE[i];
  }
}

void to_i4()
{
  int i;
  for(i=0;i<100000;i++) {
    i4[i] = TEST_TYPE[i];
  }
}

void to_i8()
{
  int i;
  for(i=0;i<100000;i++) {
    i8[i] = TEST_TYPE[i];
  }
}

void to_u1()
{
  int i;
  for(i=0;i<100000;i++) {
    u1[i] = TEST_TYPE[i];
  }
}

void to_u2()
{
  int i;
  for(i=0;i<100000;i++) {
    u2[i] = TEST_TYPE[i];
  }
}

void to_u4()
{
  int i;
  for(i=0;i<100000;i++) {
    u4[i] = TEST_TYPE[i];
  }
}

void to_u8()
{
  int i;
  for(i=0;i<100000;i++) {
    u8[i] = TEST_TYPE[i];
  }
}

#ifndef KERNEL_ONLY
int check(int sw)
{
  int i;
  for(i=0;i<100000;i++) {
    switch( sw ) {
    case (1):
      if( i1[i] != (signed char )TEST_TYPE[i] ) {
        puts("NG:1"); abort();
      }
      break;
    case (2):
      if( i2[i] != (signed short )TEST_TYPE[i] ) {
        puts("NG:2"); abort();
      }
      break;
    case (3):
      if( i4[i] != (signed int )TEST_TYPE[i] ) {
        puts("NG:3"); abort();
      }
      break;
    case (4):
      if( i8[i] != (signed long long )TEST_TYPE[i] ) {
        puts("NG:4"); abort();
      }
      break;
    case (5):
      if( u1[i] != (unsigned char )TEST_TYPE[i] ) {
        printf("NG:5 %d %d %d\n", i, u1[i], TEST_TYPE[i]); abort();
      }
      break;
    case (6):
      if( u2[i] != (unsigned short )TEST_TYPE[i] ) {
        puts("NG:6"); abort();
      }
      break;
    case (7):
      if( u4[i] != (unsigned int )TEST_TYPE[i] ) {
        puts("NG:7"); abort();
      }
      break;
    case (8):
      if( u8[i] != (unsigned long long )TEST_TYPE[i] ) {
        puts("NG:8"); abort();
      }
      break;
    }
  }
}

int init ()
{
  int i;
  for(i=0;i<100000;i++) {
    TEST_TYPE[i] = i ;
  }
}
int main()
{
  init(); to_i1(); check(1);
  init(); to_i2(); check(2);
  init(); to_i4(); check(3);
  init(); to_i8(); check(4);
  init(); to_u1(); check(5);
  init(); to_u2(); check(6);
  init(); to_u4(); check(7);
  init(); to_u8(); check(8);
  puts("PASS");
}
#endif
