#include <iostream>
#include "001.h"

#define N 100
#define Answer 4950
#define ELEMENT_TYPE long long int

using namespace std;

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  Vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i != vec.size(); ++i) {
    m += vec[i];
  }
  if (m != Answer) {
    flg = true;
  }

  return flg;
}

int main() {
  S obj;

  if (obj.action() == true) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }

  return 0;
}
