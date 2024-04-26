#include <stdio.h>
#include <math.h>
#include <complex.h>

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define N (ROLL_TIMES*2)

#define IS_EQUAL(a, b) ((a==0.0 && cabsf(b)<=1E-6) || (cabsf(a-b)/cabsf(a))<=1E-6)

double _Complex d[N];
float  _Complex f[N];

void init(void) {
  int i;
  for(i=0; i<ROLL_TIMES;++i) {
    d[i] = cos(i*1.13) - 0.23*i *I;
    f[i] = sinf(i*1.14) * I - 4.4*i;
  }
}

double _Complex sum_ans(void) {
  int i;
  double _Complex sumd=1.0*I;
  float _Complex sumf=-0.1;

  for(i=0; i<ROLL_TIMES;++i) {
    sumd += d[i];
    sumf += f[i];
  }
  return sumd+sumf;
}

double _Complex sum(void) {
  int i;
  double _Complex sumd=1.0*I;
  float _Complex sumf=-.1;

  for(i=0; i<ROLL_TIMES;++i) {
    sumd += d[i];
    sumf += f[i];
  }
  return sumd+sumf;
}

int main()
{
  double _Complex ans, res; 
  
  init();
  ans = sum_ans();
  res = sum();
  if(IS_EQUAL(ans, res)) {
    puts("OK");
  } else {
    puts("NG");
  }
  return 0;
}
