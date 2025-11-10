#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec58_1,vec58_2;

void func58() {
  std::swap(vec58_1,vec58_2);
}

struct S58 {
  bool action();
};

bool S58::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec58_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec58_2.push_back(i);
  }
  
  for (int i=0; i<vec58_1.size(); ++i) {
    if (i == 3) {
      func58();
    }
    m += vec58_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub58()
{
  S58 obj;

  if (obj.action() == true) {
    std::puts("NG 58");
  } else {
    std::puts("OK 58");
  }
}
