#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec12_1,vec12_2;

void func12_2() {
  int j=0;
  while (j<11) {
    (vec12_1).swap(vec12_2);
    j++;
  }
}

void func12_1() {
  for (int j=0; j<11; j++) {
    func12_2();
  }
}

struct S12 {
  bool action();
};

bool S12::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec12_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec12_2.push_back(i);
  }
  
  for (int i=0; i<vec12_1.size(); ++i) {
    if (i == 3) {
      func12_1();
    }
    m += vec12_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub12()
{
  S12 obj;

  if (obj.action() == true) {
    std::puts("NG 12");
  } else {
    std::puts("OK 12");
  }
}
