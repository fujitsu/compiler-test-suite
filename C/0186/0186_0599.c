
#include <stdio.h>
#include <math.h>

#define N 1000
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#define MAINF MAIN__
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main
#endif

extern void sincosf(float, float *, float *) ;

#define equal_check(val1, val2) (fabsf(val1 - val2)/fabsf(val1) >= 1.0e-5f)

int main(){
  int i ;
  float x[N], y[N], z[N], y2[N], z2[N] ;
  float st, ed, inc ;
  void sub(float, float *, float *) ;

  st = -10.0 ;
  ed = 10.0 ;
  inc = (ed - st) / (float)N ;
  x[0] = st ;
  for(i=1; i<N; i++){
    x[i] = x[i-1] + inc ;
  }

  for(i=0; i<N; i++){
    y[i] = sinf(x[i]) ;
    z[i] = cosf(x[i]) ;
  }

  for(i=0; i<N; i++)
    sub(x[i], &y2[i], &z2[i]) ;

  for(i=0; i<N; i++){
    if (equal_check(y[i],y2[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}


void sub(float x, float *y, float *z){
  sincosf(x, y, z) ;
}
