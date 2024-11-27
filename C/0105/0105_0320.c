#include <stdio.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define IMAX 100
#define JMAX 100
int a_array[IMAX][JMAX],b_array [IMAX][JMAX];
#define ROTATION_NUM 100
#define ANSWER 59200.0f

void loop_interchange(int pi,int pj) {
  int i, j;
  for (j=pi-1;j<JMAX;j++) {
    for (i=0;i<IMAX-pi+pj;i++) {
      a_array[i][j] = a_array[i][j] * b_array[i][j];
    }
  }
}

int main() {
  double result=0;
  int i,j;
  i=j=0;

  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM; ++j) {
      a_array[i][j] = 2;
      b_array[i][j] = 3;
    }
  }
  i=j=3;
  loop_interchange(i,j);

  for (i=0; i < ROTATION_NUM; ++i) {
    for (j=0; j < ROTATION_NUM; ++j) {
      result += a_array[i][j];
    }
  }

  if( (result - ANSWER) == 0 ) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}

