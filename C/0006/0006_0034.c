#include <stdio.h>
#include <math.h>

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define N (ROLL_TIMES*2)

#define IS_EQUAL(a, b) ((a==0.0 && b<=1E-6) || (fabs(a-b)/fabs(a))<=1E-6)

double d[N];
int  f[N];

void init(void) {
  int i;  
  for(i=0; i<ROLL_TIMES;++i) {
    d[i] = cos(i*1.13);
    f[i] = (int)i*sinf(i*1.14);
  }
}

double sum_ans(void) {
  int i;
  double sumd=1.0;
  int sumf=2;
  
  for(i=0; i<ROLL_TIMES;++i) {
    sumd *= d[i];
    sumf *= f[i];
  }
  return sumd+sumf;
}

double sum(void) {
  int i;
  double sumd=1.0;
  int sumf=2;

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
