
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
  double x[N], y[N], y2[N] ;
  double st, ed, inc ;
  void sub(double, double *) ;

  st = -1.0 ;
  ed = 1.0 ;
  inc = (ed - st) / (double)N ;
  x[0] = st ;
  for(i=1; i<N; i++){
    x[i] = x[i-1] + inc ;
  }

  for(i=0; i<N; i++){
    y[i] = acos(x[i]) ;
  }

  for(i=0; i<N; i++)
    sub(x[i], &y2[i]) ;

  for(i=0; i<N; i++){
    if (equal_check(y[i],y2[i])) {
      PRINT_NG;
    }
  }
  PRINT_OK;
  return 0;
}


void sub(double x, double *y){
  *y = acos(x) ;
}
