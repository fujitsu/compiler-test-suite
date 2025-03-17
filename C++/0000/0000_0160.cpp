#include <iostream>
#include <vector>

#define N 100
#define Answer 5049
#define ELEMENT_TYPE long long int

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  ELEMENT_TYPE x = 1;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(), x = 1; ;it++) {
    if (it == vec.end()) {
      break;
    }
    m += *it +x;
  }
  if (m != Answer) {
    flg = true;
  }

  return flg;
}

int main() {
  S obj;

  if (obj.action() == true) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }

  return 0;
}
