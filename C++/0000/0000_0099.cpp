#include <iostream>
#include <vector>

#define N 100
#define Answer 4950
#define ELEMENT_TYPE unsigned long long int

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  size_t it = 0;
 start:
  m += vec[it];
  ++it;
  if (it != vec.size()) { goto start; }

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
