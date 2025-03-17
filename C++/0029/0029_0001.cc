#include <string>
using namespace std;
float a[1000];
float m = 500.0;
float v1 = 10.0;
float v2 = 20.0;

static void init() {
  int i;
  for (i=0; i<1000; ++i) {
    a[i] = (float)i;
  }
}

static float user_func(float *x, float *y) {
  float *ans;
  if (*x > *y) {
    ans = &v1;
  } else {
    ans = &v2;
  }
  return *ans;
}

static void foo() {
  int i;
  float ans;
  for (i=0; i<1000; ++i) {
    ans = user_func(&(a[i]),&m);
  }
  if (ans == 10.0) {
    printf("OK\n");
  } else {
    printf("NG %f\n",ans);
  }
}

int main() {
  init();
  foo();
  return 0;
}

