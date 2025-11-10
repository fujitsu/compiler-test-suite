#include <iostream>
#include <vector>

#define N 11
#define Master 25
#define ELEMENT_TYPE unsigned char

struct S16 {
  bool action();
};

bool S16::action() {
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

void sub16()
{
  S16 obj;

  if (obj.action() == true) {
    std::puts("NG 16");
  } else {
    std::puts("OK 16");
  }
}
