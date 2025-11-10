#include <iostream>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE long long int
#define IND_TYPE2 unsigned long long int

struct S19 {
  bool action();
};

int x19 [N];
static void init(void) {
  int i;
  for (i=0; i<N; ++i) {
    x19[i] = i;
  }
}

using namespace std;
bool S19::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  init();
  for (IND_TYPE j=0; j<(IND_TYPE2)N;++j) {
    m += x19[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub19()
{
  S19 obj;

  if (obj.action() == true) {
    std::puts("NG 19");
  } else {
    std::puts("OK 19");
  }
}
