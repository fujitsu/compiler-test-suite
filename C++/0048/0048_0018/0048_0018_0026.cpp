#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec27_1,vec27_2;

void func27() {
  for (int j=0; j<11; j++) {
    (vec27_1).swap(vec27_2);
  }
}

struct S27 {
  bool action();
};

bool S27::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec27_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec27_2.push_back(i);
  }
  
  for (int i=0; i<vec27_1.size(); ++i) {
    if (i == 3) {
      func27();
    }
    m += vec27_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec27_2.push_back(j);
  }
  return flg;
}

void sub27()
{
  S27 obj;

  if (obj.action() == true) {
    std::puts("NG 27");
  } else {
    std::puts("OK 27");
  }
}
