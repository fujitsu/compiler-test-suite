#include <stdio.h>
#include <math.h>

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define N (ROLL_TIMES*2)
#define TYPE double
#define INIT_VALUE 1.0

#define IS_EQUAL(a, b) ((a==0.0 && b<=1E-14) || (fabs(a-b)/fabs(a))<=1E-14)

TYPE a[N],b[N],c[N],d[N];

void init(void) {
  int i;  
  for(i=0; i<ROLL_TIMES;++i) {
    a[i] = sin(i*1.1);
  }
}

TYPE sum_ans(void) {
  int i;
  TYPE sum=INIT_VALUE;  
  for(i=0; i<ROLL_TIMES;++i) {
    sum += a[i];
  }
  return sum;
}

TYPE sum(void) {
  int i;
  TYPE sum=INIT_VALUE;
  for(i=0; i<ROLL_TIMES;++i) {
    sum += a[i];
  }
  return sum;
}

int main()
{
  TYPE ans, res; 
  
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
