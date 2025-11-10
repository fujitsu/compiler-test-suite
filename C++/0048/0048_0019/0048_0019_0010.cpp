#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE double

struct S11 {
  bool action();
};

bool S11::action() {
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

void sub11()
{
  S11 obj;

  if (obj.action() == true) {
    std::puts("NG 11");
  } else {
    std::puts("OK 11");
  }
}
