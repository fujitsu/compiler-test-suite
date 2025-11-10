#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int
#define IND_TYPE float

struct S11 {
  bool action();
};

bool S11::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }

  for (IND_TYPE j=0; j<vec.size();++j) {
    m += vec[static_cast<int>(j)];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub11()
{
  S11 obj;

  if (obj.action() == true) {
    std::puts("NG 11");
  } else {
    std::puts("OK 11");
  }
}
