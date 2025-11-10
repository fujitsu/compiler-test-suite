#include <iostream>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE long long int
#define IND_TYPE2 unsigned int

struct S22 {
  bool action();
};

int x22 [N];
static void init(void) {
  int i;
  for (i=0; i<N; ++i) {
    x22[i] = i;
  }
}

using namespace std;
bool S22::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  init();
  for (IND_TYPE j=0; j<(IND_TYPE2)N;++j) {
    m += x22[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub22()
{
  S22 obj;

  if (obj.action() == true) {
    std::puts("NG 22");
  } else {
    std::puts("OK 22");
  }
}
