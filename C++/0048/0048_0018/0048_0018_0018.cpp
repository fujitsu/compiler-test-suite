#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func19_2(vector<ELEMENT_TYPE> &vec19_1, vector<ELEMENT_TYPE> &vec19_2) {
  int j=0;
  while (j<11) {
    (vec19_1).swap(vec19_2);
    j++;
  }
}

void func19_1(vector<ELEMENT_TYPE> &vec19_1, vector<ELEMENT_TYPE> &vec19_2) {
  int j=0;
  while (j<11) {
    func19_2(vec19_1,vec19_2);  
    j++;
  }
}

struct S19 {
  bool action();
};

bool S19::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec19_1,vec19_2;

  for (size_t i=1; i<N; ++i) {
    vec19_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec19_2.push_back(i);
  }
  
  for (int i=0; i<vec19_1.size(); ++i) {
    if (i == 3) {
      func19_1(vec19_1,vec19_2);
    }
    m += vec19_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub19()
{
  S19 obj;

  if (obj.action() == true) {
    std::puts("NG 19");
  } else {
    std::puts("OK 19");
  }
}
