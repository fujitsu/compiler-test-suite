#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func41_2(vector<ELEMENT_TYPE> &vec41_1,
	      vector<ELEMENT_TYPE> &vec41_2) {
  (vec41_1).swap(vec41_2);
}

void func41_1(vector<ELEMENT_TYPE> &vec41_1,
	      vector<ELEMENT_TYPE> &vec41_2) {
  func41_2(vec41_1,vec41_2);  
}

struct S41 {
  bool action();
};

bool S41::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec41_1,vec41_2;

  for (size_t i=1; i<N; ++i) {
    vec41_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec41_2.push_back(i);
  }
  
  for (int i=0; i<vec41_1.size(); ++i) {
    if (i == 3) {
      func41_1(vec41_1,vec41_2);
    }
    m += vec41_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec41_2.push_back(j);
  }
  return flg;
}

void sub41()
{
  S41 obj;

  if (obj.action() == true) {
    std::puts("NG 41");
  } else {
    std::puts("OK 41");
  }
}
