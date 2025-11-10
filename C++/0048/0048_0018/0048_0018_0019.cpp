#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec20_1,vec20_2;

void func20() {
  (vec20_1).swap(vec20_2);
  for (int j=0; j<11; j++) {
    vec20_2.push_back(j);
  }
}

struct S20 {
  bool action();
};

bool S20::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec20_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec20_2.push_back(i);
  }
  
  for (int i=0; i<vec20_1.size(); ++i) {
    if (i == 3) {
      func20();
    }
    m += vec20_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub20()
{
  S20 obj;

  if (obj.action() == true) {
    std::puts("NG 20");
  } else {
    std::puts("OK 20");
  }
}
