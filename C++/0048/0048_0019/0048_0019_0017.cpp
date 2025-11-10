#include <iostream>
#include <vector>

#define N 101
#define Master 2500
#define ELEMENT_TYPE unsigned int

struct S18 {
  bool action();
};

bool S18::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); it=it+2) {
    m += *it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub18()
{
  S18 obj;

  if (obj.action() == true) {
    std::puts("NG 18");
  } else {
    std::puts("OK 18");
  }
}
