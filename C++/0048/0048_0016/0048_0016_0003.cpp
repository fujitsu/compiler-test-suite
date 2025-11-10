#include <cstdio>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int

struct S4 {
  bool action();
};

bool S4::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  it = vec.begin();
  for (;it != vec.end();) {
    m += *it;
    it++;
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
