#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 545
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec47_1,vec47_2;

void func47_2() {
  for (int j=0; j<11; j++) {
    vec47_2.push_back(j);
  }
  (vec47_1).swap(vec47_2);
}

void func47_1() {
  for (int j=0; j<11; j++) {
    vec47_2.push_back(j);
  }
  func47_2();
}

struct S47 {
  bool action();
};

bool S47::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec47_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec47_2.push_back(i);
  }
  
  for (int i=0; i<vec47_1.size(); ++i) {
    if (i == 3) {
      func47_1();
    }
    m += vec47_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec47_2.push_back(j);
  }
  return flg;
}

void sub47()
{
  S47 obj;

  if (obj.action() == true) {
    std::puts("NG 47");
  } else {
    std::puts("OK 47");
  }
}
