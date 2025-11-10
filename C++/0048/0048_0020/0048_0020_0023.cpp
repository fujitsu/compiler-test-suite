#include <iostream>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE long long int
#define IND_TYPE2 unsigned int

struct S24 {
  bool action();
};

int x24 [N];
static void init(void) {
  int i;
  for (i=0; i<N; ++i) {
    x24[i] = i;
  }
}

static unsigned int get_term_num(void) {
  return (unsigned int)N;
}

using namespace std;
bool S24::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  init();
  for (IND_TYPE j=0; j<get_term_num();++j) {
    m += x24[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub24()
{
  S24 obj;

  if (obj.action() == true) {
    std::puts("NG 24");
  } else {
    std::puts("OK 24");
  }
}
