#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func9(vector<ELEMENT_TYPE> &vec9_1, vector<ELEMENT_TYPE> &vec9_2) {
  int j=0;
  while (j<11) {
    (vec9_1).swap(vec9_2);
    j++;
  }
}

struct S9 {
  bool action();
};

bool S9::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec9_1,vec9_2;

  for (size_t i=1; i<N; ++i) {
    vec9_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec9_2.push_back(i);
  }
  
  for (int i=0; i<vec9_1.size(); ++i) {
    if (i == 3) {
      func9(vec9_1,vec9_2);
    }
    m += vec9_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub9()
{
  S9 obj;

  if (obj.action() == true) {
    std::puts("NG 9");
  } else {
    std::puts("OK 9");
  }
}
