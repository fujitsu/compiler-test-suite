#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec63_1,vec63_2;

void func63() {
  (vec63_1).swap(vec63_2);
}

struct S63 {
  bool action();
};

bool S63::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec63_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec63_2.push_back(i);
  }

  int i = 0;
  while (i < vec63_1.size()) {
    func63();
    m += vec63_1[i];
    i++;
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub63()
{
  S63 obj;

  if (obj.action() == true) {
    std::puts("NG 63");
  } else {
    std::puts("OK 63");
  }
}
