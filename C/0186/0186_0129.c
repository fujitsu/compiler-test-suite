#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
#define ROLL_TIMES 99

void sub(double *da, double *db1, double * db2, float *fa, float *fb1, float *fb2)
{
  long i;
  for (i = 0; i < ROLL_TIMES; i++) {
    db1[i] = 0.5 - da[i]; 
    db2[i] = 1.0 - da[i]; 
    fb1[i] = 0.5 - fa[i]; 
    fb2[i] = 1.0 - fa[i]; 
  }
}

void init(double *da, float *fa)
{
  long i;
  for (i=0; i<ROLL_TIMES; i++) {
    da[i] = i;
    fa[i] = i+i;
  }
}

#ifndef ASM_ONLY
int main() {
  double da[ROLL_TIMES];
  double db1[ROLL_TIMES];
  double db2[ROLL_TIMES];
  float fa[ROLL_TIMES];
  float fb1[ROLL_TIMES];
  float fb2[ROLL_TIMES];

  double ans,master;
  
  long i;

  master = 0;
  ans = 0;
  init(da,fa);

  sub(da,db1,db2,fa,fb1,fb2);

  for (i=0; i<ROLL_TIMES; i++) {
    master += (3.0 - da[i] * 2 - fa[i] * 2);
    ans += (db1[i] + db2[i] + fb1[i] + fb2[i]);
  }
  if (ans == master) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
#endif

