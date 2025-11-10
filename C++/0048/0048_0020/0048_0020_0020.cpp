#include <iostream>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE long long int
#define IND_TYPE2 long long int

struct S21 {
  bool action();
};

int x21 [N];
static void init(void) {
  int i;
  for (i=0; i<N; ++i) {
    x21[i] = i;
  }
}

using namespace std;
bool S21::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  init();
  for (IND_TYPE j=0; j<(IND_TYPE2)N;++j) {
    m += x21[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub21()
{
  S21 obj;

  if (obj.action() == true) {
    std::puts("NG 21");
  } else {
    std::puts("OK 21");
  }
}
