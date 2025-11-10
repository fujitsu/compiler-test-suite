#include <iostream>
#include <vector>

#define N 10
#define Master 45
#define ELEMENT_TYPE unsigned char

struct S6 {
  bool action();
};

bool S6::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); ++it) {
    m += *it;
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
