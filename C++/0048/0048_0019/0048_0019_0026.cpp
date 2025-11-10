#include <iostream>
#include <vector>

#define N 100
#define Master 1617
#define ELEMENT_TYPE unsigned long long int
#define K 3

struct S27 {
  bool action();
};

static int get_step(void) {
  return K;
}

bool S27::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  int k;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; i++) {
    vec.push_back(i);
  }
  k = get_step();
  for (it = vec.begin(); it != vec.end(); it=it+k) {
    m += *it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub27()
{
  S27 obj;

  if (obj.action() == true) {
    std::puts("NG 27");
  } else {
    std::puts("OK 27");
  }
}
