#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec36_1,vec36_2;

void func36_2() {
  for (int j=0; j<11; j++) {
    (vec36_1).swap(vec36_2);
  }
}

void func36_1() {
  func36_2();
}

struct S36 {
  bool action();
};

bool S36::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec36_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec36_2.push_back(i);
  }
  
  for (int i=0; i<vec36_1.size(); ++i) {
    if (i == 3) {
      func36_1();
    }
    m += vec36_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec36_2.push_back(j);
  }
  return flg;
}

void sub36()
{
  S36 obj;

  if (obj.action() == true) {
    std::puts("NG 36");
  } else {
    std::puts("OK 36");
  }
}
