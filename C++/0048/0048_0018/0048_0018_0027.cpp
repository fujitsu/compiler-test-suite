#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec28_1,vec28_2;

void func28() {
  int j=0;
  while (j<11) {
    (vec28_1).swap(vec28_2);
    j++;
  }
}

struct S28 {
  bool action();
};

bool S28::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec28_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec28_2.push_back(i);
  }
  
  for (int i=0; i<vec28_1.size(); ++i) {
    if (i == 3) {
      func28();
    }
    m += vec28_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec28_2.push_back(j);
  }
  return flg;
}

void sub28()
{
  S28 obj;

  if (obj.action() == true) {
    std::puts("NG 28");
  } else {
    std::puts("OK 28");
  }
}
