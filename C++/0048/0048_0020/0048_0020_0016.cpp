#include <iostream>
#include <vector>

#define N 100
#define Master 99
#define ELEMENT_TYPE long long int
#define IND_TYPE long long int

struct S17 {
  bool action();
};

bool S17::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }

  for (IND_TYPE j=vec.size()-1; j==vec.size()-1; ++j) {
    m += vec[j];
  }

  std::printf("%d\n", m);
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub17()
{
  S17 obj;

  if (obj.action() == true) {
    std::puts("NG 17");
  } else {
    std::puts("OK 17");
  }
}
