#include <iostream>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Answer 0
#define ELEMENT_TYPE int
std::vector<ELEMENT_TYPE> vec1,vec2;

ELEMENT_TYPE size_func() {
  (vec1).swap(vec2);
  return vec1.size();
}

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec1.push_back(i);
  }
  
  for (int i=0; i < size_func(); ++i) {
    m += vec1[i];
  }
  if (m != Answer) {
    flg = true;
  }

  return flg;
}

int main() {
  S obj;

  if (obj.action() == true) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }

  return 0;
}
