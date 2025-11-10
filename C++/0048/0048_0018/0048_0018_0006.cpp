#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func7(vector<ELEMENT_TYPE> &vec7_1, vector<ELEMENT_TYPE> &vec7_2) {
  (vec7_1).swap(vec7_2);
}

struct S7 {
  bool action();
};

bool S7::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec7_1,vec7_2;

  for (size_t i=1; i<N; ++i) {
    vec7_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec7_2.push_back(i);
  }
  
  for (int i=0; i<vec7_1.size(); ++i) {
    if (i == 3) {
      func7(vec7_1,vec7_2);
    }
    m += vec7_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub7()
{
  S7 obj;

  if (obj.action() == true) {
    std::puts("NG 7");
  } else {
    std::puts("OK 7");
  }
}
