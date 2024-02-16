#include <stdio.h>

typedef unsigned long long int test_t1;
typedef unsigned long long int test_t2;

#define SH_N   2

test_t1 shift_calc(test_t1 in1, test_t2 in2)
{
  return in1 ^ (in2 >> SH_N);
}

#define CALC(x,y)  x^(((test_t2)y)>>SH_N)

test_t1 in_data1[] = { 0x8000000000000000LL, 0x8000000180000001LL, -100, -2, -1, 0, 1, 2, 100, 0x1000, 0x7fffffffLL, 0x7ffffffffffffffeLL, 0x7fffffffffffffffLL };
test_t2 in_data2[] = { 0x8000000000000000LL, 0x8000000180000001LL, -100, -2, -1, 0, 1, 2, 100, 0x1000, 0x7fffffffLL, 0x7ffffffffffffffeLL, 0x7fffffffffffffffLL };
test_t1 out[sizeof(in_data1)/sizeof(test_t1)][sizeof(in_data2)/sizeof(test_t2)] = {
  { CALC(0x8000000000000000LL, 0x8000000000000000LL), CALC(0x8000000000000000LL, 0x8000000180000001LL), CALC(0x8000000000000000LL, -100), CALC(0x8000000000000000LL, -2), CALC(0x8000000000000000LL, -1), CALC(0x8000000000000000LL,  0), CALC(0x8000000000000000LL,  1), CALC(0x8000000000000000LL,  2), CALC(0x8000000000000000LL,  100), CALC(0x8000000000000000LL,  0x1000), CALC(0x8000000000000000LL,  0x7fffffffLL), CALC(0x8000000000000000LL,  0x7ffffffffffffffeLL), CALC(0x8000000000000000LL,  0x7fffffffffffffffLL) },
  { CALC(0x8000000180000001LL, 0x8000000000000000LL), CALC(0x8000000180000001LL, 0x8000000180000001LL), CALC(0x8000000180000001LL, -100), CALC(0x8000000180000001LL, -2), CALC(0x8000000180000001LL, -1), CALC(0x8000000180000001LL,  0), CALC(0x8000000180000001LL,  1), CALC(0x8000000180000001LL,  2), CALC(0x8000000180000001LL,  100), CALC(0x8000000180000001LL,  0x1000), CALC(0x8000000180000001LL,  0x7fffffffLL), CALC(0x8000000180000001LL,  0x7ffffffffffffffeLL), CALC(0x8000000180000001LL,  0x7fffffffffffffffLL) },
  { CALC(-100, 0x8000000000000000LL), CALC(-100, 0x8000000180000001LL), CALC(-100, -100), CALC(-100, -2), CALC(-100, -1), CALC(-100,  0), CALC(-100,  1), CALC(-100,  2), CALC(-100,  100), CALC(-100,  0x1000), CALC(-100,  0x7fffffffLL), CALC(-100,  0x7ffffffffffffffeLL), CALC(-100,  0x7fffffffffffffffLL) },
  { CALC(-2, 0x8000000000000000LL), CALC(-2, 0x8000000180000001LL), CALC(-2, -100), CALC(-2, -2), CALC(-2, -1), CALC(-2,  0), CALC(-2,  1), CALC(-2,  2), CALC(-2,  100), CALC(-2,  0x1000), CALC(-2,  0x7fffffffLL), CALC(-2,  0x7ffffffffffffffeLL), CALC(-2,  0x7fffffffffffffffLL) },
  { CALC(-1, 0x8000000000000000LL), CALC(-1, 0x8000000180000001LL), CALC(-1, -100), CALC(-1, -2), CALC(-1, -1), CALC(-1,  0), CALC(-1,  1), CALC(-1,  2), CALC(-1,  100), CALC(-1,  0x1000), CALC(-1,  0x7fffffffLL), CALC(-1,  0x7ffffffffffffffeLL), CALC(-1,  0x7fffffffffffffffLL) },
  { CALC(0, 0x8000000000000000LL), CALC(0, 0x8000000180000001LL), CALC(0, -100), CALC(0, -2), CALC(0, -1), CALC(0,  0), CALC(0,  1), CALC(0,  2), CALC(0,  100), CALC(0,  0x1000), CALC(0,  0x7fffffffLL), CALC(0,  0x7ffffffffffffffeLL), CALC(0,  0x7fffffffffffffffLL) },
  { CALC(1, 0x8000000000000000LL), CALC(1, 0x8000000180000001LL), CALC(1, -100), CALC(1, -2), CALC(1, -1), CALC(1,  0), CALC(1,  1), CALC(1,  2), CALC(1,  100), CALC(1,  0x1000), CALC(1,  0x7fffffffLL), CALC(1,  0x7ffffffffffffffeLL), CALC(1,  0x7fffffffffffffffLL) },
  { CALC(2, 0x8000000000000000LL), CALC(2, 0x8000000180000001LL), CALC(2, -100), CALC(2, -2), CALC(2, -1), CALC(2,  0), CALC(2,  1), CALC(2,  2), CALC(2,  100), CALC(2,  0x1000), CALC(2,  0x7fffffffLL), CALC(2,  0x7ffffffffffffffeLL), CALC(2,  0x7fffffffffffffffLL) },
  { CALC(100, 0x8000000000000000LL), CALC(100, 0x8000000180000001LL), CALC(100, -100), CALC(100, -2), CALC(100, -1), CALC(100,  0), CALC(100,  1), CALC(100,  2), CALC(100,  100), CALC(100,  0x1000), CALC(100,  0x7fffffffLL), CALC(100,  0x7ffffffffffffffeLL), CALC(100,  0x7fffffffffffffffLL) },
  { CALC(0x1000, 0x8000000000000000LL), CALC(0x1000, 0x8000000180000001LL), CALC(0x1000, -100), CALC(0x1000, -2), CALC(0x1000, -1), CALC(0x1000,  0), CALC(0x1000,  1), CALC(0x1000,  2), CALC(0x1000,  100), CALC(0x1000,  0x1000), CALC(0x1000,  0x7fffffffLL), CALC(0x1000,  0x7ffffffffffffffeLL), CALC(0x1000,  0x7fffffffffffffffLL) },
  { CALC(0x7fffffffLL, 0x8000000000000000LL), CALC(0x7fffffffLL, 0x8000000180000001LL), CALC(0x7fffffffLL, -100), CALC(0x7fffffffLL, -2), CALC(0x7fffffffLL, -1), CALC(0x7fffffffLL,  0), CALC(0x7fffffffLL,  1), CALC(0x7fffffffLL,  2), CALC(0x7fffffffLL,  100), CALC(0x7fffffffLL,  0x1000), CALC(0x7fffffffLL,  0x7fffffffLL), CALC(0x7fffffffLL,  0x7ffffffffffffffeLL), CALC(0x7fffffffLL,  0x7fffffffffffffffLL) },
  { CALC(0x7ffffffffffffffeLL, 0x8000000000000000LL), CALC(0x7ffffffffffffffeLL, 0x8000000180000001LL), CALC(0x7ffffffffffffffeLL, -100), CALC(0x7ffffffffffffffeLL, -2), CALC(0x7ffffffffffffffeLL, -1), CALC(0x7ffffffffffffffeLL,  0), CALC(0x7ffffffffffffffeLL,  1), CALC(0x7ffffffffffffffeLL,  2), CALC(0x7ffffffffffffffeLL,  100), CALC(0x7ffffffffffffffeLL,  0x1000), CALC(0x7ffffffffffffffeLL,  0x7fffffffLL), CALC(0x7ffffffffffffffeLL,  0x7ffffffffffffffeLL), CALC(0x7ffffffffffffffeLL,  0x7fffffffffffffffLL) },
  { CALC(0x7fffffffffffffffLL, 0x8000000000000000LL), CALC(0x7fffffffffffffffLL, 0x8000000180000001LL), CALC(0x7fffffffffffffffLL, -100), CALC(0x7fffffffffffffffLL, -2), CALC(0x7fffffffffffffffLL, -1), CALC(0x7fffffffffffffffLL,  0), CALC(0x7fffffffffffffffLL,  1), CALC(0x7fffffffffffffffLL,  2), CALC(0x7fffffffffffffffLL,  100), CALC(0x7fffffffffffffffLL,  0x1000), CALC(0x7fffffffffffffffLL,  0x7fffffffLL), CALC(0x7fffffffffffffffLL,  0x7ffffffffffffffeLL), CALC(0x7fffffffffffffffLL,  0x7fffffffffffffffLL) },
};

int main()
{
  int i,j;
  test_t1 res;
  for (i=0;i<sizeof(in_data1)/sizeof(test_t1);i++) {
    for (j=0;j<sizeof(in_data2)/sizeof(test_t2);j++) {
      res = shift_calc(in_data1[i], in_data2[j]);
      if (res != out[i][j]) {
        printf("NG : %llx + (%llx >> n) = calc (%llx) ans(%llx) \n", in_data1[i], in_data2[j], res, out[i][j]);
      }
    }
  }
  printf("PASS\n");
  
  return 0;
}

