#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 545
#define ELEMENT_TYPE long long int

void func48_2(vector<ELEMENT_TYPE> *vec48_1,
	      vector<ELEMENT_TYPE> *vec48_2) {
  for (int j=0; j<11; j++) {
    (*vec48_2).push_back(j);
  }
  (*vec48_1).swap(*vec48_2);
}

void func48_1(vector<ELEMENT_TYPE> *vec48_1,
	      vector<ELEMENT_TYPE> *vec48_2) {
  for (int j=0; j<11; j++) {
    (*vec48_2).push_back(j);
  }
  func48_2(vec48_1,vec48_2);  
}

struct S48 {
  bool action();
};

bool S48::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec48_1,vec48_2;

  for (size_t i=1; i<N; ++i) {
    vec48_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec48_2.push_back(i);
  }
  
  for (int i=0; i<vec48_1.size(); ++i) {
    if (i == 3) {
      func48_1(&vec48_1,&vec48_2);
    }
    m += vec48_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec48_2.push_back(j);
  }
  return flg;
}

void sub48()
{
  S48 obj;

  if (obj.action() == true) {
    std::puts("NG 48");
  } else {
    std::puts("OK 48");
  }
}
