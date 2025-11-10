#include <cstdio>
#include <vector>

#define N 100
#define Master 9900
#define ELEMENT_TYPE long long int

struct S6 {
  bool action();
};

bool S6::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  ELEMENT_TYPE x = 1;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  it = vec.begin();
  for (;it != vec.end();it++,x++) {
    m += *it + x;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub6()
{
  S6 obj;

  if (obj.action() == true) {
    std::puts("NG 6");
  } else {
    std::puts("OK 6");
  }
}
