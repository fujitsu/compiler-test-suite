#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func29(vector<ELEMENT_TYPE> *vec29_1,
	    vector<ELEMENT_TYPE> *vec29_2) {
  (*vec29_1).swap(*vec29_2);
}

struct S29 {
  bool action();
};

bool S29::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec29_1,vec29_2;

  for (size_t i=1; i<N; ++i) {
    vec29_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec29_2.push_back(i);
  }
  
  for (int i=0; i<vec29_1.size(); ++i) {
    if (i == 3) {
      func29(&vec29_1,&vec29_2);
    }
    m += vec29_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec29_2.push_back(j);
  }
  return flg;
}

void sub29()
{
  S29 obj;

  if (obj.action() == true) {
    std::puts("NG 29");
  } else {
    std::puts("OK 29");
  }
}
