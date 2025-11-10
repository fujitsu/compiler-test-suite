#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func6(vector<ELEMENT_TYPE> *vec6_1, vector<ELEMENT_TYPE> *vec6_2) {
  int j = 0;
  while (j<11) {
    (*vec6_1).swap(*vec6_2);
    j++;
  }
}

struct S6 {
  bool action();
};

bool S6::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec6_1,vec6_2;

  for (size_t i=1; i<N; ++i) {
    vec6_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec6_2.push_back(i);
  }
  
  for (int i=0; i<vec6_1.size(); ++i) {
    if (i == 3) {
      func6(&vec6_1,&vec6_2);
    }
    m += vec6_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub6()
{
  S6 obj;

  if (obj.action() == true) {
    std::puts("NG 6");
  } else {
    std::puts("OK 6");
  }
}
