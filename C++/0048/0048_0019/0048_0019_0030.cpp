#include <iostream>
#include <vector>

#define N 101
#define Master 2500
#define ELEMENT_TYPE unsigned long long int

struct S32 {
  bool action();
};

bool S32::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); ++it) {
    m += *it;
    ++it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub32()
{
  S32 obj;

  if (obj.action() == true) {
    std::puts("NG 32");
  } else {
    std::puts("OK 32");
  }
}
