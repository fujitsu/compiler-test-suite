#include <cstdio>
#include <vector>

#define N 100
#define NN 90
#define Master 4950
#define ELEMENT_TYPE long long int

static void foo(std::vector<ELEMENT_TYPE> vec) {
  vec.resize(NN);
}

struct S14 {
  bool action();
};

bool S14::action() {
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
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub14()
{
  S14 obj;

  if (obj.action() == true) {
    std::puts("NG 14");
  } else {
    std::puts("OK 14");
  }
}
