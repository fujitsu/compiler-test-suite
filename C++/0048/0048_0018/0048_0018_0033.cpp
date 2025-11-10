#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func34(vector<ELEMENT_TYPE> &vec34_1,
	    vector<ELEMENT_TYPE> &vec34_2) {
  int j=0;
  while (j<11) {
    (vec34_1).swap(vec34_2);
    j++;
  }
}

struct S34 {
  bool action();
};

bool S34::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec34_1,vec34_2;

  for (size_t i=1; i<N; ++i) {
    vec34_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec34_2.push_back(i);
  }
  
  for (int i=0; i<vec34_1.size(); ++i) {
    if (i == 3) {
      func34(vec34_1,vec34_2);
    }
    m += vec34_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec34_2.push_back(j);
  }
  return flg;
}

void sub34()
{
  S34 obj;

  if (obj.action() == true) {
    std::puts("NG 34");
  } else {
    std::puts("OK 34");
  }
}
