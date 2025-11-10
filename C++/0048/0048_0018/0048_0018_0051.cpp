#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 9246
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec52_1;

void func52() {
  vec52_1.assign(80,120);
}

struct S52 {
  bool action();
};

bool S52::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec52_1.push_back(i);
  }
  
  for (int i=0; i<vec52_1.size(); ++i) {
    if (i == 3) {
      func52();
    }
    m += vec52_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub52()
{
  S52 obj;

  if (obj.action() == true) {
    std::puts("NG 52");
  } else {
    std::puts("OK 52");
  }
}
