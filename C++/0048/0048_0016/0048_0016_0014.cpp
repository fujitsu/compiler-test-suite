#include <cstdio>
#include <vector>

#define N 100
#define Master 9900
#define ELEMENT_TYPE long long int

struct S15 {
  bool action();
};

bool S15::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  ELEMENT_TYPE x = 1;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); ++it,++x) {
    m += *it + x;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub15()
{
  S15 obj;

  if (obj.action() == true) {
    std::puts("NG 15");
  } else {
    std::puts("OK 15");
  }
}
