#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 1176
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec56_1;

void func56() {
  vec56_1.erase(vec56_1.end()-1);
}

struct S56 {
  bool action();
};

bool S56::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec56_1.push_back(i);
  }
  
  for (int i=0; i<vec56_1.size(); ++i) {
    if (i == 3) {
      func56();
    }
    m += vec56_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub56()
{
  S56 obj;

  if (obj.action() == true) {
    std::puts("NG 56");
  } else {
    std::puts("OK 56");
  }
}
