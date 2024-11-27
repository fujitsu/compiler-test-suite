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

i1  s_i1, input_i1[N], result_i1 =  0;
i2  s_i2, input_i2[N], result_i2 =  0;
i4  s_i4, input_i4[N], result_i4 =  0;
i8  s_i8, input_i8[N], result_i8 =  0;
u1  s_u1, input_u1[N], result_u1 =  0;
u2  s_u2, input_u2[N], result_u2 =  0;
u4  s_u4, input_u4[N], result_u4 =  0;
u8  s_u8, input_u8[N], result_u8 =  0;

void test_i1(void)
{
  long i;
#pragma omp simd reduction(^:s_i1)
  for(i=0;i<N;i++) {
    s_i1 = s_i1 ^ input_i1[i];
  }
}

void test_i2(void)
{
  long i;
#pragma omp simd reduction(^:s_i2)
  for(i=0;i<N;i++) {
    s_i2 = s_i2 ^ input_i2[i];
  }
}

void test_i4(void)
{
  long i;
#pragma omp simd reduction(^:s_i4)
  for(i=0;i<N;i++) {
    s_i4 = s_i4 ^ input_i4[i];
  }
}

void test_i8(void)
{
  long i;
#pragma omp simd reduction(^:s_i8)
  for(i=0;i<N;i++) {
    s_i8 = s_i8 ^ input_i8[i];
  }
}

void test_u1(void)
{
  long i;
#pragma omp simd reduction(^:s_u1)
  for(i=0;i<N;i++) {
    s_u1 = s_u1 ^ input_u1[i];
  }
}

void test_u2(void)
{
  long i;
#pragma omp simd reduction(^:s_u2)
  for(i=0;i<N;i++) {
    s_u2 = s_u2 ^ input_u2[i];
  }
}

void test_u4(void)
{
  long i;
#pragma omp simd reduction(^:s_u4)
  for(i=0;i<N;i++) {
    s_u4 = s_u4 ^ input_u4[i];
  }
}

void test_u8(void)
{
  long i;
#pragma omp simd reduction(^:s_u8)
  for(i=0;i<N;i++) {
    s_u8 = s_u8 ^ input_u8[i];
  }
}

int main(void)
{
  long i;
  s_i1 = s_i2 = s_i4 = s_i8 = 0;
  s_u1 = s_u2 = s_u4 = s_u8 = 0;
  for(i=0;i<N;i++) {
    input_i1[i] = 0;
    input_i2[i] = 0;
    input_i4[i] = 0;
    input_i8[i] = 0;
    input_u1[i] = 0;
    input_u2[i] = 0;
    input_u4[i] = 0;
    input_u8[i] = 0;
  }
  test_i1();
  test_i2();
  test_i4();
  test_i8();
  test_u1();
  test_u2();
  test_u4();
  test_u8();
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
  input_i1[N/2] = 1;
  input_i2[N/2] = 1;
  input_i4[N/2] = 1;
  input_i8[N/2] = 1;
  input_u1[N/2] = 1;
  input_u2[N/2] = 1;
  input_u4[N/2] = 1;
  input_u8[N/2] = 1;
  test_i1();
  test_i2();
  test_i4();
  test_i8();
  test_u1();
  test_u2();
  test_u4();
  test_u8();
  if (!s_i1) {
    printf("NG2 s %d %d \n", (int )s_i1, (int )result_i1);
  }
  if (!s_i2) {
    printf("NG2 s %d %d \n", (int )s_i2, (int )result_i2);
  }
  if (!s_i4) {
    printf("NG2 s %d %d \n", (int )s_i4, (int )result_i4);
  }
  if (!s_i8) {
    printf("NG2 s %d %d \n", (int )s_i8, (int )result_i8);
  }
  if (!s_u1) {
    printf("NG2 s %d %d \n", (int )s_u1, (int )result_u1);
  }
  if (!s_u2) {
    printf("NG2 s %d %d \n", (int )s_u2, (int )result_u2);
  }
  if (!s_u4) {
    printf("NG2 s %d %d \n", (int )s_u4, (int )result_u4);
  }
  if (!s_u8) {
    printf("NG2 s %d %d \n", (int )s_u8, (int )result_u8);
  }
  puts("PASS");
  return 0;
}
