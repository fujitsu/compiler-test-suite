#include <stdio.h>
#define loop_num1 10000
#define loop_num2 500
#define loop_num3 1000

void init(double *a, int n) {
  int i;

  for (i=0; i<n; i++) {
    a[i] = (double)i;
  }
}

void ans(double *a1, double *b1,
	 double *a2, double *b2,
	 double *a3, double *b3) {
  int i;

  for (i=0; i<loop_num1-40; i=i+40) {
    if (a1[i] != b1[i]) {
      printf("ng b1[%d] = %f\n",i,b1[i]);
    }
  }


  for (i=0; i<loop_num2-40; i=i+40) {
    if (a2[i] != b2[i]) {
      printf("ng b2[%d] = %f\n",i,b2[i]);
    }
  }


  for (i=0; i<loop_num3-40; i=i+40) {
    if (a3[i] != b3[i]) {
      printf("ng b3[%d] = %f\n",i,b3[i]);
    }
  }
}

int main()
{
  double a1[loop_num1],b1[loop_num1];
  double a2[loop_num2],b2[loop_num2];
  double a3[loop_num3],b3[loop_num3];
  int i;

  init(a1,loop_num1);
  init(a2,loop_num2);
  init(a3,loop_num3);

#pragma clang loop unroll(disable)
  for (i=0; i<loop_num1-40; i=i+40) {
    b1[i] = a1[i];
  }
  
#pragma clang loop unroll(disable)
  for (i=0; i<loop_num2-40; i=i+40) {
    b2[i] = a2[i];
  }

#pragma clang loop unroll(disable)
  for (i=0; i<loop_num3-40; i=i+40) {
    b3[i] = a3[i];
  }

  ans(a1,b1,a2,b2,a3,b3);
  printf("ok\n");
  return 0;
}
