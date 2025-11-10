#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int
#define IND_TYPE long long int

struct S14 {
  bool action();
};

bool S14::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }

  for (IND_TYPE j=vec.size()-1; j>=0;--j) {
    m += vec[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub14()
{
  S14 obj;

  if (obj.action() == true) {
    std::puts("NG 14");
  } else {
    std::puts("OK 14");
  }
}
