#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func24_2(vector<ELEMENT_TYPE> *vec24_1,
	      vector<ELEMENT_TYPE> *vec24_2) {
  (*vec24_1).swap(*vec24_2);
  for (int j=0; j<5; j++) {
    (*vec24_2).push_back(j);
  }
}

void func24_1(vector<ELEMENT_TYPE> *vec24_1,
	      vector<ELEMENT_TYPE> *vec24_2) {
  func24_2(vec24_1,vec24_2);  
  for (int j=0; j<5; j++) {
    (*vec24_2).push_back(j);
  }
}

struct S24 {
  bool action();
};

bool S24::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec24_1,vec24_2;

  for (size_t i=1; i<N; ++i) {
    vec24_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec24_2.push_back(i);
  }
  
  for (int i=0; i<vec24_1.size(); ++i) {
    if (i == 3) {
      func24_1(&vec24_1,&vec24_2);
    }
    m += vec24_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub24()
{
  S24 obj;

  if (obj.action() == true) {
    std::puts("NG 24");
  } else {
    std::puts("OK 24");
  }
}
