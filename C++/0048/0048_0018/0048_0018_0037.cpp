#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func38_2(vector<ELEMENT_TYPE> *vec38_1,
	      vector<ELEMENT_TYPE> *vec38_2) {
  (*vec38_1).swap(*vec38_2);
}

void func38_1(vector<ELEMENT_TYPE> *vec38_1,
	      vector<ELEMENT_TYPE> *vec38_2) {
  func38_2(vec38_1,vec38_2);  
}

struct S38 {
  bool action();
};

bool S38::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec38_1,vec38_2;

  for (size_t i=1; i<N; ++i) {
    vec38_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec38_2.push_back(i);
  }
  
  for (int i=0; i<vec38_1.size(); ++i) {
    if (i == 3) {
      func38_1(&vec38_1,&vec38_2);
    }
    m += vec38_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec38_2.push_back(j);
  }
  return flg;
}

void sub38()
{
  S38 obj;

  if (obj.action() == true) {
    std::puts("NG 38");
  } else {
    std::puts("OK 38");
  }
}
