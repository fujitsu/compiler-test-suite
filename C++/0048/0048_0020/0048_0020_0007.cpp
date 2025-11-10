#include <iostream>
#include <vector>

#define N 100
#define Master 4950
#define ELEMENT_TYPE long long int
#define IND_TYPE unsigned short int 

struct S8 {
  bool action();
};

bool S8::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }

  for (IND_TYPE j=0; j<vec.size();++j) {
    m += vec[j];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub8()
{
  S8 obj;

  if (obj.action() == true) {
    std::puts("NG 8");
  } else {
    std::puts("OK 8");
  }
}
