#include <stdio.h>
#include <math.h>

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define N (ROLL_TIMES*2)

#define IS_EQUAL(a,b) (a==b)

long long int d[N];
short  f[N];

void init(void) {
  int i;  
  for(i=0; i<ROLL_TIMES;++i) {
    d[i] = (i-12)%9+i;
    f[i] = i*i/(i+3);
  }
}

long long int sum_ans(void) {
  int i;
  long long int sumd=1;
  short sumf=1;
 
  for(i=0; i<ROLL_TIMES;++i) {
    sumd *= d[i];
    sumf *= f[i];
  }
  return sumd+sumf;
}

long long int sum(void) {
  int i;
  long long int sumd=1;
  short sumf=1;

  for(i=0; i<ROLL_TIMES;++i) {
    sumd *= d[i];
    sumf *= f[i];
  }
  return sumd+sumf;
}

int main()
{
  long long int ans, res; 
  
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
