#include <iostream>
#include <vector>

#define N 100
#define Master 4950

struct S1 {
  bool action();
};

bool S1::action() {
  bool flg = false;
  int m = 0;

  std::vector<int> vec;
  std::vector<int>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); ++it) {
    m += *it;
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub1()
{
  S1 obj;

  if (obj.action() == true) {
    std::puts("NG 1");
  } else {
    std::puts("OK 1");
  }
}
