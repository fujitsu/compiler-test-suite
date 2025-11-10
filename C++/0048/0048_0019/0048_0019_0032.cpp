#include <iostream>
#include <vector>

#define N 101
#define Master 2550
#define ELEMENT_TYPE unsigned long long int

struct S34 {
  bool action();
};

bool S34::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::reverse_iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.rbegin(); it != vec.rend(); ++it) {
    m += *it;
    ++it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub34()
{
  S34 obj;

  if (obj.action() == true) {
    std::puts("NG 34");
  } else {
    std::puts("OK 34");
  }
}
