#include <stdio.h>
#include <math.h>

#define N 1024
double     dr[N],ds[N];
float      fr[N],fs[N];
long long  lr[N],ls[N];
int        ir[N],is[N];
short      sr[N],ss[N];
char       cr[N],cs[N];


void sub1() {
  int i;
  for(i=0;i<1024;++i) {
    dr[i] = dr[i] + ds[i];
  }
}
void sub2() {
  int i;
  for(i=0;i<1024;++i) {
    fr[i] = fr[i] + fs[i];
  }
}
void sub3() {
  int i;
  for(i=0;i<1024;++i) {
    lr[i] = lr[i] + ls[i];
  }
}
void sub4() {
  int i;
  for(i=0;i<1024;++i) {
    ir[i] = ir[i] + is[i];
  }
}
void sub5() {
  int i;
  for(i=0;i<1024;++i) {
    sr[i] = sr[i] + ss[i];
  }
}
void sub6() {
  int i;
  for(i=0;i<1024;++i) {
    cr[i] = cr[i] + cs[i];
  }
}

void init() {
  int i;
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    dr[i]=(double)i;
    fr[i]=(float)i;
    lr[i]=(long long)i;
    ir[i]=(int)i;
    sr[i]=(short)i;
    cr[i]=(char)i;
  }
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    ds[i]=-(double)i;
    fs[i]=-(float)i;
    ls[i]=-(long long)i;
    is[i]=-(int)i;
    ss[i]=-(short)i;
    cs[i]=-(char)i;
  }
}

void check(void) {
  int i;
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if((fabs(dr[i])>=(double)10E-13)    ||
       (fabs(fr[i])>=(float)10E-7)      ||
       (lr[i]!=(long long)0) ||
       (ir[i]!=(int)0)       ||
       (sr[i]!=(short)0)     ||
       (cr[i]!=(char)0)) {
      printf("NG:%d\n",i);
    }
  }
  printf("OK\n");
}

int main(void) {
  init();
  sub1();
  sub2();
  sub3();
  sub4();
  sub5();
  sub6();
  check();
  return 0;
}

