#include <iostream>
#include <vector>

#define N 100
#define Answer 4950
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
  it = vec.begin();
  for (;it != vec.end() && x != 0;) {
    m += *it;
    it++;
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
