#include <iostream>
#include <vector>

#define N 100
#define NN 90
#define Answer 4950
#define ELEMENT_TYPE long long int

static void foo(std::vector<ELEMENT_TYPE> vec) {
  vec.resize(NN);
}

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); ++it) {
    m += *it;
    foo(vec);
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
