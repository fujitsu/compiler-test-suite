#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func43_2(vector<ELEMENT_TYPE> &vec43_1,
	      vector<ELEMENT_TYPE> &vec43_2) {
  int j=0;
  while (j<11) {
    (vec43_1).swap(vec43_2);
    j++;
  }
}

void func43_1(vector<ELEMENT_TYPE> &vec43_1,
	      vector<ELEMENT_TYPE> &vec43_2) {
  int j=0;
  while (j<11) {
    func43_2(vec43_1,vec43_2);  
    j++;
  }
}

struct S43 {
  bool action();
};

bool S43::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec43_1,vec43_2;

  for (size_t i=1; i<N; ++i) {
    vec43_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec43_2.push_back(i);
  }
  
  for (int i=0; i<vec43_1.size(); ++i) {
    if (i == 3) {
      func43_1(vec43_1,vec43_2);
    }
    m += vec43_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec43_2.push_back(j);
  }
  return flg;
}

void sub43()
{
  S43 obj;

  if (obj.action() == true) {
    std::puts("NG 43");
  } else {
    std::puts("OK 43");
  }
}
