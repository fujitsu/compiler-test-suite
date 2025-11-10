#include <iostream>
#include <vector>

#define N 101
#define Master 2500
#define ELEMENT_TYPE unsigned long long int

struct S33 {
  bool action();
};

bool S33::action() {
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

void sub33()
{
  S33 obj;

  if (obj.action() == true) {
    std::puts("NG 33");
  } else {
    std::puts("OK 33");
  }
}
