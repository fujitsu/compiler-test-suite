#include <cstdio>
#include "001.h"

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int

using namespace std;

struct S2 {
  bool action();
};

bool S2::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  Vector<ELEMENT_TYPE> vec;
  Vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); ++it) {
    m += *it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub2()
{
  S2 obj;

  if (obj.action() == true) {
    std::puts("NG 2");
  } else {
    std::puts("OK 2");
  }
}
