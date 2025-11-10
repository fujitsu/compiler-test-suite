#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 55
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec57_1;

void func57() {
  vec57_1.resize(10);
}

struct S57 {
  bool action();
};

bool S57::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec57_1.push_back(i);
  }
  
  for (int i=0; i<vec57_1.size(); ++i) {
    if (i == 3) {
      func57();
    }
    m += vec57_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub57()
{
  S57 obj;

  if (obj.action() == true) {
    std::puts("NG 57");
  } else {
    std::puts("OK 57");
  }
}
