#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec26_1,vec26_2;

void func26() {
  (vec26_1).swap(vec26_2);
}

struct S26 {
  bool action();
};

bool S26::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec26_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec26_2.push_back(i);
  }
  
  for (int i=0; i<vec26_1.size(); ++i) {
    if (i == 3) {
      func26();
    }
    m += vec26_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec26_2.push_back(j);
  }
  return flg;
}

void sub26()
{
  S26 obj;

  if (obj.action() == true) {
    std::puts("NG 26");
  } else {
    std::puts("OK 26");
  }
}
