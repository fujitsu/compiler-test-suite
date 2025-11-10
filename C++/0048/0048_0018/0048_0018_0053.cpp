#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1176
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec54_1;

void func54() {
  vec54_1.pop_back();
}

struct S54 {
  bool action();
};

bool S54::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec54_1.push_back(i);
  }
  
  for (int i=0; i<vec54_1.size(); ++i) {
    if (i == 3) {
      func54();
    }
    m += vec54_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub54()
{
  S54 obj;

  if (obj.action() == true) {
    std::puts("NG 54");
  } else {
    std::puts("OK 54");
  }
}
