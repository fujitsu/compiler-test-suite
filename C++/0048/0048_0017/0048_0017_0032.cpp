#include <cstdio>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int

struct S37 {
  bool action();
};

bool S37::action() {
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

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub37()
{
  S37 obj;

  if (obj.action() == true) {
    std::puts("NG 37");
  } else {
    std::puts("OK 37");
  }
}
