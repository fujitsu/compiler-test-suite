#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func22(vector<ELEMENT_TYPE> &vec22_1,
	    vector<ELEMENT_TYPE> &vec22_2) {
  (vec22_1).swap(vec22_2);
  for (int j=0; j<11; j++) {
    vec22_2.push_back(j);
  }
}

struct S22 {
  bool action();
};

bool S22::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec22_1,vec22_2;

  for (size_t i=1; i<N; ++i) {
    vec22_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec22_2.push_back(i);
  }
  
  for (int i=0; i<vec22_1.size(); ++i) {
    if (i == 3) {
      func22(vec22_1,vec22_2);
    }
    m += vec22_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub22()
{
  S22 obj;

  if (obj.action() == true) {
    std::puts("NG 22");
  } else {
    std::puts("OK 22");
  }
}
