#include <cstdio>
#include <vector>

using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec2_2_1,vec2_2_2;

void func2() {
  for (int j=0; j<11; j++) {
    (vec2_2_1).swap(vec2_2_2);
  }
}

struct S2 {
  bool action();
};

bool S2::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec2_2_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec2_2_2.push_back(i);
  }
  
  for (int i=0; i<vec2_2_1.size(); ++i) {
    if (i == 3) {
      func2();
    }
    m += vec2_2_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub2()
{
  S2 obj;

  if (obj.action() == true) {
    std::puts("NG 2");
  } else {
    std::puts("OK 2");
  }
}
