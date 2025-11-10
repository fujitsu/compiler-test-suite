#include <cstdio>
#include <vector>

using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func4(vector<ELEMENT_TYPE> *vec4_1, vector<ELEMENT_TYPE> *vec4_2) {
  (*vec4_1).swap(*vec4_2);
}

struct S4 {
  bool action();
};

bool S4::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec4_1,vec4_2;

  for (size_t i=1; i<N; ++i) {
    vec4_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec4_2.push_back(i);
  }
  
  for (int i=0; i<vec4_1.size(); ++i) {
    if (i == 3) {
      func4(&vec4_1,&vec4_2);
    }
    m += vec4_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub4()
{
  S4 obj;

  if (obj.action() == true) {
    std::puts("NG 4");
  } else {
    std::puts("OK 4");
  }
}
