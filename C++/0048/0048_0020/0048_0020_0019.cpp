#include <iostream>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE long long int
#define IND_TYPE2 int

struct S20 {
  bool action();
};

int x20 [N];
static void init(void) {
  int i;
  for (i=0; i<N; ++i) {
    x20[i] = i;
  }
}

using namespace std;
bool S20::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  init();
  for (IND_TYPE j=0; j<(IND_TYPE2)N;++j) {
    m += x20[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub20()
{
  S20 obj;

  if (obj.action() == true) {
    std::puts("NG 20");
  } else {
    std::puts("OK 20");
  }
}
