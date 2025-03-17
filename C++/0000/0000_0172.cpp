#include <iostream>
#include <vector>

#define N 100
#define Answer 4950
#define ELEMENT_TYPE long long int
#define IND_TYPE int

struct S {
  bool action(int n);
};

bool S::action(int n) {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }

  for (IND_TYPE j=n; j<vec.size()+n;++j) {
    m += vec[j-n];
  }

  if (m != Answer) {
    flg = true;
  }

  return flg;
}

int main() {
  S obj;
  int n = 1;
  if (obj.action(n) == true) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }

  return 0;
}
