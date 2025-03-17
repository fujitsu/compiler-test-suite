#include <iostream>
#include <vector>

#define N 100
#define Answer 99
#define ELEMENT_TYPE long long int
#define IND_TYPE long long int

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

  for (IND_TYPE j=vec.size()-1; j==vec.size()-1; ++j) {
    m += vec[j];
  }

  printf("%d\n", m);
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
