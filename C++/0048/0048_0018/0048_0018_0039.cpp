#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func40_2(vector<ELEMENT_TYPE> *vec40_1,
	      vector<ELEMENT_TYPE> *vec40_2) {
  int j=0;
  while (j<11) {
    (*vec40_1).swap(*vec40_2);
    j++;
  }
}

void func40_1(vector<ELEMENT_TYPE> *vec40_1,
	      vector<ELEMENT_TYPE> *vec40_2) {
  int j=0;
  while (j<11) {
    func40_2(vec40_1,vec40_2);  
    j++;
  }
}

struct S40 {
  bool action();
};

bool S40::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec40_1,vec40_2;

  for (size_t i=1; i<N; ++i) {
    vec40_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec40_2.push_back(i);
  }
  
  for (int i=0; i<vec40_1.size(); ++i) {
    if (i == 3) {
      func40_1(&vec40_1,&vec40_2);
    }
    m += vec40_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec40_2.push_back(j);
  }
  return flg;
}

void sub40()
{
  S40 obj;

  if (obj.action() == true) {
    std::puts("NG 40");
  } else {
    std::puts("OK 40");
  }
}
