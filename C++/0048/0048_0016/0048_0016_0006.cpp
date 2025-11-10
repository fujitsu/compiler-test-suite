#include <cstdio>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int

struct S7 {
  bool action();
};

bool S7::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  ELEMENT_TYPE x = 1;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  it = vec.begin();
  for (;it != vec.end() && x != 0;) {
    m += *it;
    it++;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub7()
{
  S7 obj;

  if (obj.action() == true) {
    std::puts("NG 7");
  } else {
    std::puts("OK 7");
  }
}
