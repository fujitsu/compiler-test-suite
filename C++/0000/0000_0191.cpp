#include <iostream>

#define N 100
#define Answer 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE long long int
#define IND_TYPE2 unsigned int

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

static unsigned int get_term_num(void) {
  return (unsigned int)N;
}

using namespace std;
bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  init();
  for (IND_TYPE j=0; j<get_term_num();++j) {
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
