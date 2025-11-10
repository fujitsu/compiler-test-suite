#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func32(vector<ELEMENT_TYPE> &vec32_1,
	    vector<ELEMENT_TYPE> &vec32_2) {
  (vec32_1).swap(vec32_2);
}

struct S32 {
  bool action();
};

bool S32::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec32_1,vec32_2;

  for (size_t i=1; i<N; ++i) {
    vec32_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec32_2.push_back(i);
  }
  
  for (int i=0; i<vec32_1.size(); ++i) {
    if (i == 3) {
      func32(vec32_1,vec32_2);
    }
    m += vec32_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec32_2.push_back(j);
  }
  return flg;
}

void sub32()
{
  S32 obj;

  if (obj.action() == true) {
    std::puts("NG 32");
  } else {
    std::puts("OK 32");
  }
}
