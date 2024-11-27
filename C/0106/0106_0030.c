#include <stdio.h>
#include <math.h>
#define N 1024

double a[N];
double b[N];

void init() {
  int i;
  for(i=0;i<N;++i) {
    a[i] = i*1.0;
    b[i] = i*1.0;
  }
}

#define ERROR 1E-15
void check() {
  int i;

  for(i=0;i<N;++i) {
    if (fabs(a[i] - b[i]) > ERROR) { 
      puts("NG");
      return;
    }
  }
  return;
}

#define LOOP_A(M) for(i=0; i<M; ++i) {a[i] = a[i] + 1.0;}
#define LOOP_B(M) for(i=0; i<M; ++i) {b[i] = b[i] + 1.0;}

int get_var() {
  return 100;
}

int main(void) {
  int i;

  {
    int num = get_var();
    init();
    LOOP_A(num);
    LOOP_B(num);
    check();
  }
  {
    init();
    LOOP_A(40);
    LOOP_B(40);
    check();
  }
  {
    init();
    LOOP_A(100);
    LOOP_B(100);
    check();
  }
  {
    init();
    LOOP_A(90);
    LOOP_B(90);
    check();
  }
  {
    init();
    LOOP_A(80);
    LOOP_B(80);
    check();
  }
  {
    init();
    LOOP_A(70);
    LOOP_B(70);
    check();
  }
  {
    init();
    LOOP_A(60);
    LOOP_B(60);
    check();
  }
  {
    init();
    LOOP_A(50);
    LOOP_B(50);
    check();
  }
  puts("OK");
}
