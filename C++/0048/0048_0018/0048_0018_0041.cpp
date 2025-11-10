#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func42_2(vector<ELEMENT_TYPE> &vec42_1,
	      vector<ELEMENT_TYPE> &vec42_2) {
  for (int j=0; j<11; j++) {
    (vec42_1).swap(vec42_2);
  }
}

void func42_1(vector<ELEMENT_TYPE> &vec42_1,
	      vector<ELEMENT_TYPE> &vec42_2) {
  for (int j=0; j<11; j++) {
    func42_2(vec42_1,vec42_2);  
  }
}

struct S42 {
  bool action();
};

bool S42::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec42_1,vec42_2;

  for (size_t i=1; i<N; ++i) {
    vec42_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec42_2.push_back(i);
  }
  
  for (int i=0; i<vec42_1.size(); ++i) {
    if (i == 3) {
      func42_1(vec42_1,vec42_2);
    }
    m += vec42_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec42_2.push_back(j);
  }
  return flg;
}

void sub42()
{
  S42 obj;

  if (obj.action() == true) {
    std::puts("NG 42");
  } else {
    std::puts("OK 42");
  }
}
