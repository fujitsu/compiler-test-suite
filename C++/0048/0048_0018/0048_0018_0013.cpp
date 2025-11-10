#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func14_2(vector<ELEMENT_TYPE> *vec14_1, vector<ELEMENT_TYPE> *vec14_2) {
  for (int j=0; j<11; j++) {
    (*vec14_1).swap(*vec14_2);
  }
}

void func14_1(vector<ELEMENT_TYPE> *vec14_1, vector<ELEMENT_TYPE> *vec14_2) {
  for (int j=0; j<11; j++) {
    func14_2(vec14_1,vec14_2);  
  }
}

struct S14 {
  bool action();
};

bool S14::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec14_1,vec14_2;

  for (size_t i=1; i<N; ++i) {
    vec14_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec14_2.push_back(i);
  }
  
  for (int i=0; i<vec14_1.size(); ++i) {
    if (i == 3) {
      func14_1(&vec14_1,&vec14_2);
    }
    m += vec14_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub14()
{
  S14 obj;

  if (obj.action() == true) {
    std::puts("NG 14");
  } else {
    std::puts("OK 14");
  }
}
