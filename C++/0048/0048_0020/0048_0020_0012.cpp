#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int
#define IND_TYPE long long int

struct S13 {
  bool action();
};

bool S13::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }

  for (IND_TYPE j=vec.size()-1; j>-1;--j) {
    m += vec[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub13()
{
  S13 obj;

  if (obj.action() == true) {
    std::puts("NG 13");
  } else {
    std::puts("OK 13");
  }
}
