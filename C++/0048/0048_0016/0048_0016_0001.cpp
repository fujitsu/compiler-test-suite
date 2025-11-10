#include <cstdio>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int

struct S2 {
  bool action();
};

bool S2::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  it = vec.begin();
  for (;;it++) {
    if (it == vec.end()) {
      break;
    }
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
