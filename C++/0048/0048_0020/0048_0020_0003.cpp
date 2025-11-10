#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int
#define IND_TYPE int

struct S4 {
  bool action();
};

bool S4::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }

  for (IND_TYPE j=1; j<vec.size()+1;++j) {
    m += vec[j-1];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub4()
{
  S4 obj;

  if (obj.action() == true) {
    std::puts("NG 4");
  } else {
    std::puts("OK 4");
  }
}
