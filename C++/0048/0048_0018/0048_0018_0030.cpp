#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func31(vector<ELEMENT_TYPE> *vec31_1,
	    vector<ELEMENT_TYPE> *vec31_2) {
  int j=0;
  while (j<11) {
    (*vec31_1).swap(*vec31_2);
    j++;
  }
}

struct S31 {
  bool action();
};

bool S31::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec31_1,vec31_2;

  for (size_t i=1; i<N; ++i) {
    vec31_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec31_2.push_back(i);
  }
  
  for (int i=0; i<vec31_1.size(); ++i) {
    if (i == 3) {
      func31(&vec31_1,&vec31_2);
    }
    m += vec31_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec31_2.push_back(j);
  }
  return flg;
}

void sub31()
{
  S31 obj;

  if (obj.action() == true) {
    std::puts("NG 31");
  } else {
    std::puts("OK 31");
  }
}
