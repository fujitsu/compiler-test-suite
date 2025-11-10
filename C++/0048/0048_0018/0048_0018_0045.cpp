#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 445
#define ELEMENT_TYPE long long int

void func46(vector<ELEMENT_TYPE> &vec46_1,
	    vector<ELEMENT_TYPE> &vec46_2) {
  for (int j=0; j<5; j++) {
    vec46_2.push_back(j);
  }
  (vec46_1).swap(vec46_2);
}

struct S46 {
  bool action();
};

bool S46::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec46_1,vec46_2;

  for (size_t i=1; i<N; ++i) {
    vec46_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec46_2.push_back(i);
  }
  
  for (int i=0; i<vec46_1.size(); ++i) {
    if (i == 3) {
      func46(vec46_1,vec46_2);
    }
    m += vec46_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<5; j++) {
    vec46_2.push_back(j);
  }
  return flg;
}

void sub46()
{
  S46 obj;

  if (obj.action() == true) {
    std::puts("NG 46");
  } else {
    std::puts("OK 46");
  }
}
