#include <stdio.h>

typedef signed int test_t1;
typedef signed int test_t2;

#define SH_N   2

test_t1 shift_calc(test_t1 in1, test_t2 in2)
{
  return in1 ^ (in2 >> SH_N);
}

#define CALC(x,y)  x^(((test_t2)(y))>>SH_N)

test_t1 in_data1[] = { 0x80000000, 0x80000001, -100, -2, -1, 0, 1, 2, 100, 0x1000, 0x200000, 0x7ffffffe, 0x7fffffff };
test_t2 in_data2[] = { 0x80000000, 0x80000001, -100, -2, -1, 0, 1, 2, 100, 0x1000, 0x200000, 0x7ffffffe, 0x7fffffff };
test_t1 out[sizeof(in_data1)/sizeof(test_t1)][sizeof(in_data2)/sizeof(test_t2)] = {
  { CALC(0x80000000, 0x80000000), CALC(0x80000000, 0x80000001), CALC(0x80000000, -100), CALC(0x80000000, -2), CALC(0x80000000, -1), CALC(0x80000000,  0), CALC(0x80000000,  1), CALC(0x80000000,  2), CALC(0x80000000,  100), CALC(0x80000000,  0x1000), CALC(0x80000000,  0x200000), CALC(0x80000000,  0x7ffffffe), CALC(0x80000000,  0x7fffffff) },
  { CALC(0x80000001, 0x80000000), CALC(0x80000001, 0x80000001), CALC(0x80000001, -100), CALC(0x80000001, -2), CALC(0x80000001, -1), CALC(0x80000001,  0), CALC(0x80000001,  1), CALC(0x80000001,  2), CALC(0x80000001,  100), CALC(0x80000001,  0x1000), CALC(0x80000001,  0x200000), CALC(0x80000001,  0x7ffffffe), CALC(0x80000001,  0x7fffffff) },
  { CALC(-100, 0x80000000), CALC(-100, 0x80000001), CALC(-100, -100), CALC(-100, -2), CALC(-100, -1), CALC(-100,  0), CALC(-100,  1), CALC(-100,  2), CALC(-100,  100), CALC(-100,  0x1000), CALC(-100,  0x200000), CALC(-100,  0x7ffffffe), CALC(-100,  0x7fffffff) },
  { CALC(-2, 0x80000000), CALC(-2, 0x80000001), CALC(-2, -100), CALC(-2, -2), CALC(-2, -1), CALC(-2,  0), CALC(-2,  1), CALC(-2,  2), CALC(-2,  100), CALC(-2,  0x1000), CALC(-2,  0x200000), CALC(-2,  0x7ffffffe), CALC(-2,  0x7fffffff) },
  { CALC(-1, 0x80000000), CALC(-1, 0x80000001), CALC(-1, -100), CALC(-1, -2), CALC(-1, -1), CALC(-1,  0), CALC(-1,  1), CALC(-1,  2), CALC(-1,  100), CALC(-1,  0x1000), CALC(-1,  0x200000), CALC(-1,  0x7ffffffe), CALC(-1,  0x7fffffff) },
  { CALC(0, 0x80000000), CALC(0, 0x80000001), CALC(0, -100), CALC(0, -2), CALC(0, -1), CALC(0,  0), CALC(0,  1), CALC(0,  2), CALC(0,  100), CALC(0,  0x1000), CALC(0,  0x200000), CALC(0,  0x7ffffffe), CALC(0,  0x7fffffff) },
  { CALC(1, 0x80000000), CALC(1, 0x80000001), CALC(1, -100), CALC(1, -2), CALC(1, -1), CALC(1,  0), CALC(1,  1), CALC(1,  2), CALC(1,  100), CALC(1,  0x1000), CALC(1,  0x200000), CALC(1,  0x7ffffffe), CALC(1,  0x7fffffff) },
  { CALC(2, 0x80000000), CALC(2, 0x80000001), CALC(2, -100), CALC(2, -2), CALC(2, -1), CALC(2,  0), CALC(2,  1), CALC(2,  2), CALC(2,  100), CALC(2,  0x1000), CALC(2,  0x200000), CALC(2,  0x7ffffffe), CALC(2,  0x7fffffff) },
  { CALC(100, 0x80000000), CALC(100, 0x80000001), CALC(100, -100), CALC(100, -2), CALC(100, -1), CALC(100,  0), CALC(100,  1), CALC(100,  2), CALC(100,  100), CALC(100,  0x1000), CALC(100,  0x200000), CALC(100,  0x7ffffffe), CALC(100,  0x7fffffff) },
  { CALC(0x1000, 0x80000000), CALC(0x1000, 0x80000001), CALC(0x1000, -100), CALC(0x1000, -2), CALC(0x1000, -1), CALC(0x1000,  0), CALC(0x1000,  1), CALC(0x1000,  2), CALC(0x1000,  100), CALC(0x1000,  0x1000), CALC(0x1000,  0x200000), CALC(0x1000,  0x7ffffffe), CALC(0x1000,  0x7fffffff) },
  { CALC(0x200000, 0x80000000), CALC(0x200000, 0x80000001), CALC(0x200000, -100), CALC(0x200000, -2), CALC(0x200000, -1), CALC(0x200000,  0), CALC(0x200000,  1), CALC(0x200000,  2), CALC(0x200000,  100), CALC(0x200000,  0x1000), CALC(0x200000,  0x200000), CALC(0x200000,  0x7ffffffe), CALC(0x200000,  0x7fffffff) },
  { CALC(0x7ffffffe, 0x80000000), CALC(0x7ffffffe, 0x80000001), CALC(0x7ffffffe, -100), CALC(0x7ffffffe, -2), CALC(0x7ffffffe, -1), CALC(0x7ffffffe,  0), CALC(0x7ffffffe,  1), CALC(0x7ffffffe,  2), CALC(0x7ffffffe,  100), CALC(0x7ffffffe,  0x1000), CALC(0x7ffffffe,  0x200000), CALC(0x7ffffffe,  0x7ffffffe), CALC(0x7ffffffe,  0x7fffffff) },
  { CALC(0x7fffffff, 0x80000000), CALC(0x7fffffff, 0x80000001), CALC(0x7fffffff, -100), CALC(0x7fffffff, -2), CALC(0x7fffffff, -1), CALC(0x7fffffff,  0), CALC(0x7fffffff,  1), CALC(0x7fffffff,  2), CALC(0x7fffffff,  100), CALC(0x7fffffff,  0x1000), CALC(0x7fffffff,  0x200000), CALC(0x7fffffff,  0x7ffffffe), CALC(0x7fffffff,  0x7fffffff) },
};

int main()
{
  int i,j;
  test_t1 res;
  for (i=0;i<sizeof(in_data1)/sizeof(test_t1);i++) {
    for (j=0;j<sizeof(in_data2)/sizeof(test_t2);j++) {
      res = shift_calc(in_data1[i], in_data2[j]);
      if (res != out[i][j]) {
        printf("NG : %d %d %x %x \n", i, j, res, out[i][j]);
      }
    }
  }
  printf("PASS\n");
  
  return 0;
}

