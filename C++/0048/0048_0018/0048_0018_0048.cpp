#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 545
#define ELEMENT_TYPE long long int

void func49_2(vector<ELEMENT_TYPE> &vec49_1,
	      vector<ELEMENT_TYPE> &vec49_2) {
  for (int j=0; j<11; j++) {
    vec49_2.push_back(j);
  }
  (vec49_1).swap(vec49_2);
}

void func49_1(vector<ELEMENT_TYPE> &vec49_1,
	      vector<ELEMENT_TYPE> &vec49_2) {
  for (int j=0; j<11; j++) {
    vec49_2.push_back(j);
  }
  func49_2(vec49_1,vec49_2);  
}

struct S49 {
  bool action();
};

bool S49::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec49_1,vec49_2;

  for (size_t i=1; i<N; ++i) {
    vec49_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec49_2.push_back(i);
  }
  
  for (int i=0; i<vec49_1.size(); ++i) {
    if (i == 3) {
      func49_1(vec49_1,vec49_2);
    }
    m += vec49_1[i];
  }
  for (int j=0; j<11; j++) {
    vec49_2.push_back(j);
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub49()
{
  S49 obj;

  if (obj.action() == true) {
    std::puts("NG 49");
  } else {
    std::puts("OK 49");
  }
}
