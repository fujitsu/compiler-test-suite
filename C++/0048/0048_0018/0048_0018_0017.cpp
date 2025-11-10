#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func18_2(vector<ELEMENT_TYPE> &vec18_1, vector<ELEMENT_TYPE> &vec18_2) {
  for (int j=0; j<11; j++) {
    (vec18_1).swap(vec18_2);
  }
}

void func18_1(vector<ELEMENT_TYPE> &vec18_1, vector<ELEMENT_TYPE> &vec18_2) {
  for (int j=0; j<11; j++) {
    func18_2(vec18_1,vec18_2);  
  }
}

struct S18 {
  bool action();
};

bool S18::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec18_1,vec18_2;

  for (size_t i=1; i<N; ++i) {
    vec18_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec18_2.push_back(i);
  }
  
  for (int i=0; i<vec18_1.size(); ++i) {
    if (i == 3) {
      func18_1(vec18_1,vec18_2);
    }
    m += vec18_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub18()
{
  S18 obj;

  if (obj.action() == true) {
    std::puts("NG 18");
  } else {
    std::puts("OK 18");
  }
}
