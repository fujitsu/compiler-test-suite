#include <stdio.h>
#include <math.h>
#define N 1024

double r[N];
float  s[N];
float  q[N];
int    k[N];

void sub() {
  int i;
  for (i=0; i<N; ++i) {
    r[i] = 1.0/r[i];
    s[i] = 1.0/s[i];
  }
}

void sub2() {
  int i;
  for (i=0; i<N; ++i) {
    r[i] = 1.0/r[i];
    q[i] = 1.0/q[i];
  }
}

void sub3() {
  int i;
  for (i=0; i<N; ++i) {
    k[i] = 1.0/k[i];
  }
}

void sub4() {
  int i;
  for (i=0; i<N; ++i) {
    r[i] = sqrt(r[i]);
    q[i] = sqrtf(q[i]);
  }
}


int main(void) {
  puts("OK");
}
