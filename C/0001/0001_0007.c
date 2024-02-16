#include <stdio.h>

typedef signed char  test_t1;
typedef unsigned short test_t2;
typedef signed char  test_t3;

test_t3 conv_conv(test_t1 in1)
{
  return (test_t3)(test_t2)in1;
}

#define CALC(x)  ((test_t3)(test_t2)(test_t1)x)

#define DATA0  0x80
#define DATA1  0x81
#define DATA2  -100
#define DATA3  -2
#define DATA4  -1
#define DATA5  0
#define DATA6  1
#define DATA7  2
#define DATA8  100
#define DATA9  0x10
#define DATA10 0x20 
#define DATA11 0x7e
#define DATA12 0x7f


test_t1 in_data1[] = { DATA1, DATA2, DATA2, DATA3, DATA4, DATA5, DATA6, DATA7, DATA8, DATA9, DATA10, DATA11, DATA12 };
test_t3 out[] = {
  CALC(DATA1), CALC(DATA2), CALC(DATA2), CALC(DATA3), CALC(DATA4), CALC(DATA5), CALC(DATA6), CALC(DATA7), CALC(DATA8), CALC(DATA9), CALC(DATA10), CALC(DATA11), CALC(DATA12)
};

int main()
{
  int i,j;
  test_t3 res;
  for (i=0;i<sizeof(in_data1)/sizeof(test_t1);i++) {
    res = conv_conv(in_data1[i]);
    if (res != out[i]) {
      printf("NG : %d in=%x calc=%x ans=%x \n", i, in_data1[i], res, out[i]);
    }
  }
  printf("PASS\n");
  
  return 0;
}

