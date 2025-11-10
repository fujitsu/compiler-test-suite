#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec35_1,vec35_2;

void func35_2() {
  (vec35_1).swap(vec35_2);
}

void func35_1() {
  func35_2();
}

struct S35 {
  bool action();
};

bool S35::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec35_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec35_2.push_back(i);
  }
  
  for (int i=0; i<vec35_1.size(); ++i) {
    if (i == 3) {
      func35_1();
    }
    m += vec35_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec35_2.push_back(j);
  }
  return flg;
}

void sub35()
{
  S35 obj;

  if (obj.action() == true) {
    std::puts("NG 35");
  } else {
    std::puts("OK 35");
  }
}
