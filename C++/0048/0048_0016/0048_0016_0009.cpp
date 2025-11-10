#include <cstdio>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int

struct S10 {
  bool action();
};

bool S10::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin();;) {
    if (it == vec.end()) {
      break;
    }
    m += *it;
    it++;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub10()
{
  S10 obj;

  if (obj.action() == true) {
    std::puts("NG 10");
  } else {
    std::puts("OK 10");
  }
}
