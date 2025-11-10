#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int
#define IND_TYPE int

struct S5 {
  bool action(int n);
};

bool S5::action(int n) {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }

  for (IND_TYPE j=n; j<vec.size()+n;++j) {
    m += vec[j-n];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub5()
{
  S5 obj;
  int n = 1;
  if (obj.action(n) == true) {
    std::puts("NG 5");
  } else {
    std::puts("OK 5");
  }
}
