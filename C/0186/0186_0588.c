
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

#define equal_check(val1, val2) (fabs(val1 - val2)/fabs(val1) >= 1.0e-13)
int main(){
  int i ;
  double x[N], x2[N], y[N], y2[N] ;
  double st, ed, inc ;
  void sub(double, double, double *) ;

  st = 0.1 ;
  ed = 10.0 ;
  inc = (ed - st) / (double)N ;
  x[0] = st ;
  x2[0] = st ;
  for(i=1; i<N; i++){
    x[i] = x[i-1] + inc ;
    x2[i] = x2[i-1] + inc + 1.0 ;
  }

  for(i=0; i<N; i++){
    y[i] = pow(x[i], x2[i]) ;
  }

  for(i=0; i<N; i++)
    sub(x[i], x2[i], &y2[i]) ;

  for(i=0; i<N; i++){
    if (equal_check(y[i],y2[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}


void sub(double x, double x2, double *y){
  *y = pow(x, x2) ;
}

