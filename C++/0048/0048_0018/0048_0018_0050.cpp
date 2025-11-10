#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1225
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec51_1;

void func51() {
  vec51_1.reserve(110);
}

struct S51 {
  bool action();
};

bool S51::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec51_1.push_back(i);
  }
  
  for (int i=0; i<vec51_1.size(); ++i) {
    if (i == 3) {
      func51();
    }
    m += vec51_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub51()
{
  S51 obj;

  if (obj.action() == true) {
    std::puts("NG 51");
  } else {
    std::puts("OK 51");
  }
}
