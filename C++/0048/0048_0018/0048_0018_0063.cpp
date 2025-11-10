#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 0
#define ELEMENT_TYPE int
std::vector<ELEMENT_TYPE> vec64_1,vec64_2;

ELEMENT_TYPE size_func() {
  (vec64_1).swap(vec64_2);
  return vec64_1.size();
}

struct S64 {
  bool action();
};

bool S64::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec64_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec64_1.push_back(i);
  }
  
  for (int i=0; i < size_func(); ++i) {
    m += vec64_1[i];
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub64()
{
  S64 obj;

  if (obj.action() == true) {
    std::puts("NG 64");
  } else {
    std::puts("OK 64");
  }
}
