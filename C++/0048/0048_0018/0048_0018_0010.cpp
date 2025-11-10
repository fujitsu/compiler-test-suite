#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec11_1,vec11_2;

void func11_2() {
  for (int j=0; j<11; j++) {
    (vec11_1).swap(vec11_2);
  }
}

void func11_1() {
  for (int j=0; j<11; j++) {
    func11_2();
  }
}

struct S11 {
  bool action();
};

bool S11::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec11_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec11_2.push_back(i);
  }
  
  for (int i=0; i<vec11_1.size(); ++i) {
    if (i == 3) {
      func11_1();
    }
    m += vec11_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub11()
{
  S11 obj;

  if (obj.action() == true) {
    std::puts("NG 11");
  } else {
    std::puts("OK 11");
  }
}
