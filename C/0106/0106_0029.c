#include <stdio.h>

#define N 1024
#define ITERATE 2

double q[N];
double r[N];
double s[N];
double q_ans[N];
double r_ans[N];
double s_ans[N];
int M;

#define EQUAL_CHECK(a, b) ((a==0.0 && b <= 1.0E-15) || (fabs(a - b)/fabs(a)) <= 1.0E-15)

void init_ans(){
  int i;
  for(i=0;i<N;++i) {
    q_ans[i] = (i-0.01)/N;
    s_ans[i] = i*1.1/N;
    r_ans[i] = (N - i+1.0)/N;
  }
}

void init(){
  int i;
  for(i=0;i<N;++i) {
    q[i] = (i-0.01)/N;
    s[i] = i*1.1/N;
    r[i] = (N - i+1.0)/N;
  }
}

int main(void) {
  int i;
  init_ans();
  for(i=0;i < M ;++i) {
    s_ans[i] = q_ans[i] * 1.4 - r_ans[i] * 0.4  + q_ans[i] * 0.33;
    q_ans[i] = q_ans[i] * 0.3 - s_ans[i] * 0.3  - s_ans[i] * 0.3;
    r_ans[i] = r_ans[i] * 0.3 + s_ans[i] * 0.15 - r_ans[i] * 0.5;
  }

  for (M=0; M<100; M++){ 
    init();
    for(i=0;i < M ;++i) {
      s[i] = q[i] * 1.4 - r[i] * 0.4  + q[i] * 0.33;
      q[i] = q[i] * 0.3 - s[i] * 0.3  - s[i] * 0.3;
      r[i] = r[i] * 0.3 + s[i] * 0.15 - r[i] * 0.5;
    }

    if (r_ans[i] != r[i]) {
      puts("NG");
    }
  }
  puts("OK");
}

