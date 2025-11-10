#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec65_1,vec65_2;

ELEMENT_TYPE indr_func(int i) {
  (vec65_1).swap(vec65_2);
  i++;
  return i;
}

struct S65 {
  bool action();
};

bool S65::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec65_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec65_1.push_back(i);
  }
  
  for (int i=0; i < vec65_1.size(); indr_func(i)) {
    m += vec65_1[i];
  }
  if (m != Master) {
    flg = true;
  }

  return flg;
}

void sub65()
{
  S65 obj;

  if (obj.action() == true) {
    std::puts("NG 65");
  } else {
    std::puts("OK 65");
  }
}
