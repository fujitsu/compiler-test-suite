#include <cstdio>
#include <vector>

#define N 100
#define Master 4956
#define ELEMENT_TYPE long long int

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
    if ((int)*it == 3) {
      vec.push_back(m);
    }
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
