#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec37_1,vec37_2;

void func37_2() {
  int j=0;
  while (j<11) {
    (vec37_1).swap(vec37_2);
    j++;
  }
}

void func37_1() {
  func37_2();
}

struct S37 {
  bool action();
};

bool S37::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec37_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec37_2.push_back(i);
  }
  
  for (int i=0; i<vec37_1.size(); ++i) {
    if (i == 3) {
      func37_1();
    }
    m += vec37_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec37_2.push_back(j);
  }
  return flg;
}

void sub37()
{
  S37 obj;

  if (obj.action() == true) {
    std::puts("NG 37");
  } else {
    std::puts("OK 37");
  }
}
