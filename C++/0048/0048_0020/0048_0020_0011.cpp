#include <iostream>
#include <vector>

#define N 100
#define Master 4949
#define ELEMENT_TYPE int
#define IND_TYPE int *

struct S12 {
  bool action();
};

bool S12::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  int *s;
  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  s = &(*(vec.begin()));
  for (int *j=s; *j <vec.size(); *j=*j+1) {
    m += vec[*j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub12()
{
  S12 obj;

  if (obj.action() == true) {
    std::puts("NG 12");
  } else {
    std::puts("OK 12");
  }
}
