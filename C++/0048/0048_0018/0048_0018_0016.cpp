#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func17(vector<ELEMENT_TYPE> &vec17_1, vector<ELEMENT_TYPE> &vec17_2) {
  (vec17_1).swap(vec17_2);
}

struct S17 {
  bool action();
};

bool S17::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec17_1,vec17_2;

  for (size_t i=1; i<N; ++i) {
    vec17_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec17_2.push_back(i);
  }
  
  for (int i=0; i<vec17_1.size(); ++i) {
    if (i == 3) {
      func17(vec17_1,vec17_2);
    }
    m += vec17_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub17()
{
  S17 obj;

  if (obj.action() == true) {
    std::puts("NG 17");
  } else {
    std::puts("OK 17");
  }
}
