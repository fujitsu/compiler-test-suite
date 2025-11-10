#include <iostream>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE long long int
#define IND_TYPE2 unsigned int

struct S23 {
  bool action();
};

int x23 [N];
static void init(void) {
  int i;
  for (i=0; i<N; ++i) {
    x23[i] = i;
  }
}

static unsigned int get_term_num(void) {
  return (unsigned int)N;
}

using namespace std;
bool S23::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  IND_TYPE2 nn;

  init();

  nn = get_term_num();

  for (IND_TYPE j=0; j<nn;++j) {
    m += x23[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub23()
{
  S23 obj;

  if (obj.action() == true) {
    std::puts("NG 23");
  } else {
    std::puts("OK 23");
  }
}
