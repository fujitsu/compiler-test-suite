#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec10_1,vec10_2;

void func10_2() {
  (vec10_1).swap(vec10_2);
}

void func10_1() {
  func10_2();
}

struct S10 {
  bool action();
};

bool S10::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec10_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec10_2.push_back(i);
  }
  for (int i=0; i<vec10_1.size(); ++i) {
    if (i == 3) {
      func10_1();
    }
    m += vec10_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}
  

void sub10()
{
  S10 obj;

  if (obj.action() == true) {
    std::puts("NG 10");
  } else {
    std::puts("OK 10");
  }
}
