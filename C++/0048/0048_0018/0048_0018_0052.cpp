#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1228
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec53_1;

void func53() {
  vec53_1.push_back(3);
}

struct S53 {
  bool action();
};

bool S53::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec53_1.push_back(i);
  }
  
  for (int i=0; i<vec53_1.size(); ++i) {
    if (i == 3) {
      func53();
    }
    m += vec53_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub53()
{
  S53 obj;

  if (obj.action() == true) {
    std::puts("NG 53");
  } else {
    std::puts("OK 53");
  }
}
