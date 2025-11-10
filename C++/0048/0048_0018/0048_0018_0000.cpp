#include <cstdio>
#include <vector>

using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int
std::vector<ELEMENT_TYPE> vec1_1,vec1_2;

void func1() {
  (vec1_1).swap(vec1_2);
}

struct S1 {
  bool action();
};

bool S1::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  for (size_t i=1; i<N; ++i) {
    vec1_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec1_2.push_back(i);
  }
  
  for (int i=0; i<vec1_1.size(); ++i) {
    if (i == 3) {
      func1();
    }
    m += vec1_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub1()
{
  S1 obj;

  if (obj.action() == true) {
    std::puts("NG 1");
  } else {
    std::puts("OK 1");
  }
}
