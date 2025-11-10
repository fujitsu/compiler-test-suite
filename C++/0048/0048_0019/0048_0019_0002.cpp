#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE short int

struct S3 {
  bool action();
};

bool S3::action() {
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

void sub3()
{
  S3 obj;

  if (obj.action() == true) {
    std::puts("NG 3");
  } else {
    std::puts("OK 3");
  }
}
