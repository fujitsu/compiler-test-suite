#include <stdio.h>
#include <math.h>

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define N (ROLL_TIMES*2)

#define IS_EQUAL(a, b) ((a==0.0 && b<=1E-5) || (fabs(a-b)/fabs(a))<=1E-5)

double d[N];
float  f[N];

void init(void) {
  int i;  
  for(i=0; i<ROLL_TIMES;++i) {
    d[i] = cos(i*1.13);
    f[i] = sinf(i*1.14);
  }
}

double sum_ans(void) {
  int i;
  double sumd=1.0;
  float sumf=2.0;
  
  for(i=0; i<ROLL_TIMES;++i) {
    sumd *= d[i];
    sumf *= f[i];
  }
  return sumd+sumf;
}

double sum(void) {
  int i;
  double sumd=1.0;
  float sumf=2.0;

  for(i=0; i<ROLL_TIMES;++i) {
    sumd *= d[i];
    sumf *= f[i];
  }
  return sumd+sumf;
}

int main()
{
  double ans, res; 
  
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
