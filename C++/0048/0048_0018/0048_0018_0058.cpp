#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec59_1;

void func59() {
  vec59_1.clear();
}

struct S59 {
  bool action();
};

bool S59::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec59_1.push_back(i);
  }
  
  for (int i=0; i<vec59_1.size(); ++i) {
    func59();
    m += vec59_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub59()
{
  S59 obj;

  if (obj.action() == true) {
    std::puts("NG 59");
  } else {
    std::puts("OK 59");
  }
}
