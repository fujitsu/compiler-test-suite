#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func13_2(vector<ELEMENT_TYPE> *vec13_1, vector<ELEMENT_TYPE> *vec13_2) {
  (*vec13_1).swap(*vec13_2);
}

void func13_1(vector<ELEMENT_TYPE> *vec13_1, vector<ELEMENT_TYPE> *vec13_2) {
  func13_2(vec13_1,vec13_2);  
}

struct S13 {
  bool action();
};

bool S13::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec13_1,vec13_2;

  for (size_t i=1; i<N; ++i) {
    vec13_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec13_2.push_back(i);
  }
  
  for (int i=0; i<vec13_1.size(); ++i) {
    if (i == 3) {
      func13_1(&vec13_1,&vec13_2);
    }
    m += vec13_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub13()
{
  S13 obj;

  if (obj.action() == true) {
    std::puts("NG 13");
  } else {
    std::puts("OK 13");
  }
}
