#include <cstdio>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int

struct S36 {
  bool action();
};

bool S36::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  size_t it = 0;
  do {
    m += vec[it];
    ++it;
  } while(it != vec.size());

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub36()
{
  S36 obj;

  if (obj.action() == true) {
    std::puts("NG 36");
  } else {
    std::puts("OK 36");
  }
}
