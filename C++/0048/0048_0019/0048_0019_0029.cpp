#include <iostream>
#include <vector>

#define N 100
#define Master 4949
#define ELEMENT_TYPE unsigned long long int

struct S31 {
  bool action();
};

bool S31::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.end()-1; it != vec.begin(); --it) {
    m += *it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub31()
{
  S31 obj;

  if (obj.action() == true) {
    std::puts("NG 31");
  } else {
    std::puts("OK 31");
  }
}
