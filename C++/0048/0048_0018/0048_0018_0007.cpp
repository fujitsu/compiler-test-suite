#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func8(vector<ELEMENT_TYPE> &vec8_1, vector<ELEMENT_TYPE> &vec8_2) {
  for (int j=0; j<11; j++) {
    (vec8_1).swap(vec8_2);
  }
}

struct S8 {
  bool action();
};

bool S8::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec8_1,vec8_2;

  for (size_t i=1; i<N; ++i) {
    vec8_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec8_2.push_back(i);
  }
  
  for (int i=0; i<vec8_1.size(); ++i) {
    if (i == 3) {
      func8(vec8_1,vec8_2);
    }
    m += vec8_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub8()
{
  S8 obj;

  if (obj.action() == true) {
    std::puts("NG 8");
  } else {
    std::puts("OK 8");
  }
}
