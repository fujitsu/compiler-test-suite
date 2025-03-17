#include <iostream>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Answer 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec1,vec2;

void func1() {
  (vec1).swap(vec2);
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
    vec2.push_back(i);
  }
  
  for (int i=0; i<vec1.size(); ++i) {
    if (i == 3) {
      func1();
    }
    m += vec1[i];
  }
  if (m != Answer) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec2.push_back(j);
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
