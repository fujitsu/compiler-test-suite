#include <iostream>
#include <vector>

#define N 100
#define Answer 4949
#define ELEMENT_TYPE int
#define IND_TYPE int *

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;
  int *s;
  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  s = &(*(vec.begin()));
  for (int *j=s; *j <vec.size(); *j=*j+1) {
    m += vec[*j];
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
