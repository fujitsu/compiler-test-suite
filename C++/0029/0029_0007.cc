#include <string>
using namespace std;
float a[1000];
float b[1000];

static void init() {
  int i;
  for (i=0; i<1000; ++i) {
    a[i] = (float)i;
    b[i] = (float)(i*0.1);
  }
}

static void foo() {
  int i;
  float m;
  for (i=0; i<1000; ++i) {
    m = max(b[i],a[i]);
  }
  if (m == 999) {
    printf("OK\n");
  } else {
    printf("NG %f\n",m);
  }
}

int main() {
  init();
  foo();
  return 0;
}
