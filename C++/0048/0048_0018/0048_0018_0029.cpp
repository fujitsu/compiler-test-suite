#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func30(vector<ELEMENT_TYPE> *vec30_1,
	    vector<ELEMENT_TYPE> *vec30_2) {
  for (int j=0; j<11; j++) {
    (*vec30_1).swap(*vec30_2);
  }
}

struct S30 {
  bool action();
};

bool S30::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec30_1,vec30_2;

  for (size_t i=1; i<N; ++i) {
    vec30_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec30_2.push_back(i);
  }
  
  for (int i=0; i<vec30_1.size(); ++i) {
    if (i == 3) {
      func30(&vec30_1,&vec30_2);
    }
    m += vec30_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec30_2.push_back(j);
  }
  return flg;
}

void sub30()
{
  S30 obj;

  if (obj.action() == true) {
    std::puts("NG 30");
  } else {
    std::puts("OK 30");
  }
}
