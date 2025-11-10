#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 445
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec44_1,vec44_2;

void func44() {
  for (int j=0; j<5; j++) {
    vec44_2.push_back(j);
  }
  (vec44_1).swap(vec44_2);
}

struct S44 {
  bool action();
};

bool S44::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec44_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec44_2.push_back(i);
  }
  
  for (int i=0; i<vec44_1.size(); ++i) {
    if (i == 3) {
      func44();
    }
    m += vec44_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<5; j++) {
    vec44_2.push_back(j);
  }
  return flg;
}

void sub44()
{
  S44 obj;

  if (obj.action() == true) {
    std::puts("NG 44");
  } else {
    std::puts("OK 44");
  }
}
