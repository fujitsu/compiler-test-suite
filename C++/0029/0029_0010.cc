#include <string>
using namespace std;
float a[1000];
float m = 500;

static void init() {
  int i;
  for (i=0; i<1000; ++i) {
    a[i] = (float)i;
  }
}

static void foo() {
  int i;
  for (i=0; i<1000; ++i) {
    m = min(a[i],m);
  }
  if (m == 0) {
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
