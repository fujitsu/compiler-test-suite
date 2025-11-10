#include <cstdio>
#include "001.h"

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int

using namespace std;

struct S16 {
  bool action();
};

bool S16::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  Vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (int i = 0; i != vec.size(); ++i) {
    m += vec[i];
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
