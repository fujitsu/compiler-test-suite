#include <stdio.h>
#include <math.h>

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define N (ROLL_TIMES*2)

#define IS_EQUAL(a,b) (a==b)

int d[N];
short  f[N];

void init(void) {
  int i;  
  for(i=0; i<ROLL_TIMES;++i) {
    d[i] = (i*3)%7+i;
    f[i] = 1-i;
  }
}

int sum_ans(void) {
  int i;
  int sumd=0;
  short sumf=0;
  
  for(i=0; i<ROLL_TIMES;++i) {
    sumd += d[i];
    sumf += f[i];
  }
  return sumd+sumf;
}

int sum(void) {
  int i;
  int sumd=0;
  short sumf=0;

  for(i=0; i<ROLL_TIMES;++i) {
    sumd += d[i];
    sumf += f[i];
  }
  return sumd+sumf;
}

int main()
{
  int ans, res; 
  
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
