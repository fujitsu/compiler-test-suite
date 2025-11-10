#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func39_2(vector<ELEMENT_TYPE> *vec39_1,
	      vector<ELEMENT_TYPE> *vec39_2) {
  for (int j=0; j<11; j++) {
    (*vec39_1).swap(*vec39_2);
  }
}

void func39_1(vector<ELEMENT_TYPE> *vec39_1,
	      vector<ELEMENT_TYPE> *vec39_2) {
  for (int j=0; j<11; j++) {
    func39_2(vec39_1,vec39_2);  
  }
}

struct S39 {
  bool action();
};

bool S39::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec39_1,vec39_2;

  for (size_t i=1; i<N; ++i) {
    vec39_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec39_2.push_back(i);
  }
  
  for (int i=0; i<vec39_1.size(); ++i) {
    if (i == 3) {
      func39_1(&vec39_1,&vec39_2);
    }
    m += vec39_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  for (int j=0; j<11; j++) {
    vec39_2.push_back(j);
  }
  return flg;
}

void sub39()
{
  S39 obj;

  if (obj.action() == true) {
    std::puts("NG 39");
  } else {
    std::puts("OK 39");
  }
}
