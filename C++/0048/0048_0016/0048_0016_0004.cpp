#include <cstdio>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int

struct S5 {
  bool action();
};

bool S5::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  it = vec.begin();
  for (;it != vec.end();it++) {
    m += *it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub5()
{
  S5 obj;

  if (obj.action() == true) {
    std::puts("NG 5");
  } else {
    std::puts("OK 5");
  }
}
