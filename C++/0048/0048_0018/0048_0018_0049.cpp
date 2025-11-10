#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec50_1,vec50_2;

void func50_3() {
  (vec50_1).swap(vec50_2);
}

void func50_2() {
  func50_3();
}

void func50_1() {
  func50_2();
}

struct S50 {
  bool action();
};

bool S50::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec50_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec50_2.push_back(i);
  }
  
  for (int i=0; i<vec50_1.size(); ++i) {
    if (i == 3) {
      func50_1();
    }
    m += vec50_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec50_2.push_back(j);
  }
  return flg;
}

void sub50()
{
  S50 obj;

  if (obj.action() == true) {
    std::puts("NG 50");
  } else {
    std::puts("OK 50");
  }
}
