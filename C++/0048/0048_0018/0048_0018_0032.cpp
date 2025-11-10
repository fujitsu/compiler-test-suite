#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func33(vector<ELEMENT_TYPE> &vec33_1,
	    vector<ELEMENT_TYPE> &vec33_2) {
  for (int j=0; j<11; j++) {
    (vec33_1).swap(vec33_2);
  }
}

struct S33 {
  bool action();
};

bool S33::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec33_1,vec33_2;

  for (size_t i=1; i<N; ++i) {
    vec33_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec33_2.push_back(i);
  }
  
  for (int i=0; i<vec33_1.size(); ++i) {
    if (i == 3) {
      func33(vec33_1,vec33_2);
    }
    m += vec33_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec33_2.push_back(j);
  }
  return flg;
}

void sub33()
{
  S33 obj;

  if (obj.action() == true) {
    std::puts("NG 33");
  } else {
    std::puts("OK 33");
  }
}
