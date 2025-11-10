#include <cstdio>
#include <vector>

using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func5(vector<ELEMENT_TYPE> *vec5_1, vector<ELEMENT_TYPE> *vec5_2) {
  for (int j=0; j<11; j++) {
    (*vec5_1).swap(*vec5_2);
  }
}

struct S5 {
  bool action();
};

bool S5::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec5_1,vec5_2;

  for (size_t i=1; i<N; ++i) {
    vec5_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec5_2.push_back(i);
  }
  
  for (int i=0; i<vec5_1.size(); ++i) {
    if (i == 3) {
      func5(&vec5_1,&vec5_2);
    }
    m += vec5_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub5()
{
  S5 obj;

  if (obj.action() == true) {
    std::puts("NG 5");
  } else {
    std::puts("OK 5");
  }
}
