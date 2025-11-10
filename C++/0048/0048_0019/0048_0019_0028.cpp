#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int

struct S30 {
  bool action();
};

bool S30::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::reverse_iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.rbegin(); it != vec.rend(); ++it) {
    m += *it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub30()
{
  S30 obj;

  if (obj.action() == true) {
    std::puts("NG 30");
  } else {
    std::puts("OK 30");
  }
}
