#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 445
#define ELEMENT_TYPE long long int

void func45(vector<ELEMENT_TYPE> *vec45_1,
	    vector<ELEMENT_TYPE> *vec45_2) {
  for (int j=0; j<5; j++) {
    (*vec45_2).push_back(j);
  }
  (*vec45_1).swap(*vec45_2);
}

struct S45 {
  bool action();
};

bool S45::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec45_1,vec45_2;

  for (size_t i=1; i<N; ++i) {
    vec45_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec45_2.push_back(i);
  }
  
  for (int i=0; i<vec45_1.size(); ++i) {
    if (i == 3) {
      func45(&vec45_1,&vec45_2);
    }
    m += vec45_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<5; j++) {
    vec45_2.push_back(j);
  }
  return flg;
}

void sub45()
{
  S45 obj;

  if (obj.action() == true) {
    std::puts("NG 45");
  } else {
    std::puts("OK 45");
  }
}
