#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec23_1,vec23_2;

void func23_2() {
  (vec23_1).swap(vec23_2);
  for (int j=0; j<5; j++) {
    vec23_2.push_back(j);
  }
}

void func23_1() {
  func23_2();
  for (int j=0; j<5; j++) {
    vec23_2.push_back(j);
  }
}

struct S23 {
  bool action();
};

bool S23::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec23_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec23_2.push_back(i);
  }
  
  for (int i=0; i<vec23_1.size(); ++i) {
    if (i == 3) {
      func23_1();
    }
    m += vec23_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub23()
{
  S23 obj;

  if (obj.action() == true) {
    std::puts("NG 23");
  } else {
    std::puts("OK 23");
  }
}
