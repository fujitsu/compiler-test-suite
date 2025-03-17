#include <iostream>

#define N 100
#define Answer 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE long long int
#define IND_TYPE2 unsigned long long int

struct S {
  bool action();
};

int x [N];
static void init(void) {
  int i;
  for (i=0; i<N; ++i) {
    x[i] = i;
  }
}

using namespace std;
bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  init();
  for (IND_TYPE j=0; j<(IND_TYPE2)N;++j) {
    m += x[j];
  }

  if (m != Answer) {
    flg = true;
  }

  return flg;
}

int main() {
  S obj;

  if (obj.action() == true) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }

  return 0;
}
