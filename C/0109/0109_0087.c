#include <stdio.h>
#define N 10003

typedef signed char  i1;
typedef signed short i2;
typedef signed int   i4;
typedef signed long long i8;
typedef unsigned char  u1;
typedef unsigned short u2;
typedef unsigned int   u4;
typedef unsigned long long u8;
typedef float   r4;
typedef double  r8;

i1  s_i1, input_i1[N], result_i1 =  0x7f;
i2  s_i2, input_i2[N], result_i2 =  N-1;
i4  s_i4, input_i4[N], result_i4 =  N-1;
i8  s_i8, input_i8[N], result_i8 =  N-1;
u1  s_u1, input_u1[N], result_u1 =  0xff;
u2  s_u2, input_u2[N], result_u2 =  N-1;
u4  s_u4, input_u4[N], result_u4 =  N-1;
u8  s_u8, input_u8[N], result_u8 =  N-1;
r4  s_r4, input_r4[N], result_r4 =  N-1;
r8  s_r8, input_r8[N], result_r8 =  N-1;

void test_i1(void)
{
  long i;
#pragma omp simd reduction(max:s_i1)
  for(i=0;i<N;i++) {
    if (input_i1[i] > s_i1) {
      s_i1 = input_i1[i];
    }
  }
}

void test_i2(void)
{
  long i;
#pragma omp simd reduction(max:s_i2)
  for(i=0;i<N;i++) {
    if (input_i2[i] > s_i2) {
      s_i2 = input_i2[i];
    }
  }
}

void test_i4(void)
{
  long i;
#pragma omp simd reduction(max:s_i4)
  for(i=0;i<N;i++) {
    if (input_i4[i] > s_i4) {
      s_i4 = input_i4[i];
    }
  }
}

void test_i8(void)
{
  long i;
#pragma omp simd reduction(max:s_i8)
  for(i=0;i<N;i++) {
    if (input_i8[i] > s_i8) {
      s_i8 = input_i8[i];
    }
  }
}

void test_u1(void)
{
  long i;
#pragma omp simd reduction(max:s_u1)
  for(i=0;i<N;i++) {
    if (input_u1[i] > s_u1) {
      s_u1 = input_u1[i];
    }
  }
}

void test_u2(void)
{
  long i;
#pragma omp simd reduction(max:s_u2)
  for(i=0;i<N;i++) {
    if (input_u2[i] > s_u2) {
      s_u2 = input_u2[i];
    }
  }
}

void test_u4(void)
{
  long i;
#pragma omp simd reduction(max:s_u4)
  for(i=0;i<N;i++) {
    if (input_u4[i] > s_u4) {
      s_u4 = input_u4[i];
    }
  }
}

void test_u8(void)
{
  long i;
#pragma omp simd reduction(max:s_u8)
  for(i=0;i<N;i++) {
    if (input_u8[i] > s_u8) {
      s_u8 = input_u8[i];
    }
  }
}

void test_r4(void)
{
  long i;
#pragma omp simd reduction(max:s_r4)
  for(i=0;i<N;i++) {
    if (input_r4[i] > s_r4) {
      s_r4 = input_r4[i];
    }
  }
}

void test_r8(void)
{
  long i;
#pragma omp simd reduction(max:s_r8)
  for(i=0;i<N;i++) {
    if (input_r8[i] > s_r8) {
      s_r8 = input_r8[i];
    }
  }
}

int main(void)
{
  long i;
  s_i1 = s_i2 = s_i4 = s_i8 = 1;
  s_u1 = s_u2 = s_u4 = s_u8 = 1;
  s_r4 = s_r8 = 1;
  for(i=0;i<N;i++) {
    input_i1[i] = i & 0x7f;
    input_i2[i] = i & 0x7fff;
    input_i4[i] = i;
    input_i8[i] = i;
    input_u1[i] = i & 0xff;
    input_u2[i] = i & 0xffff;
    input_u4[i] = i;
    input_u8[i] = i;
    input_r4[i] = i;
    input_r8[i] = i;
  }
  test_i1();
  test_i2();
  test_i4();
  test_i8();
  test_u1();
  test_u2();
  test_u4();
  test_u8();
  test_r4();
  test_r8();
  if (s_i1 != result_i1) {
    printf("NG s %d %d \n", (int )s_i1, (int )result_i1);
  }
  if (s_i2 != result_i2) {
    printf("NG s %d %d \n", (int )s_i2, (int )result_i2);
  }
  if (s_i4 != result_i4) {
    printf("NG s %d %d \n", (int )s_i4, (int )result_i4);
  }
  if (s_i8 != result_i8) {
    printf("NG s %d %d \n", (int )s_i8, (int )result_i8);
  }
  if (s_u1 != result_u1) {
    printf("NG s %d %d \n", (int )s_u1, (int )result_u1);
  }
  if (s_u2 != result_u2) {
    printf("NG s %d %d \n", (int )s_u2, (int )result_u2);
  }
  if (s_u4 != result_u4) {
    printf("NG s %d %d \n", (int )s_u4, (int )result_u4);
  }
  if (s_u8 != result_u8) {
    printf("NG s %d %d \n", (int )s_u8, (int )result_u8);
  }
  if (s_r4 != result_r4) {
    printf("NG s %d %d \n", (int )s_r4, (int )result_r4);
  }
  if (s_r8 != result_r8) {
    printf("NG s %d %d \n", (int )s_r8, (int )result_r8);
  }
  puts("PASS");
  return 0;
}
