#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func15_2(vector<ELEMENT_TYPE> *vec15_1, vector<ELEMENT_TYPE> *vec15_2) {
  int j=0;
  while (j<11) {
    (*vec15_1).swap(*vec15_2);
    j++;
  }
}

void func15_1(vector<ELEMENT_TYPE> *vec15_1, vector<ELEMENT_TYPE> *vec15_2) {
  int j=0;
  while (j<11) {
    func15_2(vec15_1,vec15_2);  
    j++;
  }
}

struct S15 {
  bool action();
};

bool S15::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec15_1,vec15_2;

  for (size_t i=1; i<N; ++i) {
    vec15_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec15_2.push_back(i);
  }
  
  for (int i=0; i<vec15_1.size(); ++i) {
    if (i == 3) {
      func15_1(&vec15_1,&vec15_2);
    }
    m += vec15_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub15()
{
  S15 obj;

  if (obj.action() == true) {
    std::puts("NG 15");
  } else {
    std::puts("OK 15");
  }
}
