#include <cstdio>
#include <vector>

#define N 100
#define Master 5049
#define ELEMENT_TYPE long long int

struct S20 {
  bool action();
};

bool S20::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  ELEMENT_TYPE x = 1;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(), x = 1; ;it++) {
    if (it == vec.end()) {
      break;
    }
    m += *it +x;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub20()
{
  S20 obj;

  if (obj.action() == true) {
    std::puts("NG 20");
  } else {
    std::puts("OK 20");
  }
}
