#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1225
#define ELEMENT_TYPE long long int

void func16_2(vector<ELEMENT_TYPE> *vec16_1, vector<ELEMENT_TYPE> *vec16_2) {
  int j=0;
  while (j<11) {
    for (int k=0; k<10; k++) {
      (*vec16_1).swap(*vec16_2);
      j++;
    }
  }
}

void func16_1(vector<ELEMENT_TYPE> *vec16_1, vector<ELEMENT_TYPE> *vec16_2) {
  int j=0;
  for (int k=0; k<10; k++) {
    while (j<11) {
      func16_2(vec16_1,vec16_2);  
      j++;
    }
  }
}

struct S16 {
  bool action();
};

bool S16::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec16_1,vec16_2;

  for (size_t i=1; i<N; ++i) {
    vec16_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec16_2.push_back(i);
  }
  
  for (int i=0; i<vec16_1.size(); ++i) {
    if (i == 3) {
      func16_1(&vec16_1,&vec16_2);
    }
    m += vec16_1[i];
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub16()
{
  S16 obj;

  if (obj.action() == true) {
    std::puts("NG 16");
  } else {
    std::puts("OK 16");
  }
}
