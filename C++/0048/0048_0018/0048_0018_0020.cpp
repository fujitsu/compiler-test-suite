#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func21(vector<ELEMENT_TYPE> *vec21_1,
	    vector<ELEMENT_TYPE> *vec21_2) {
  (*vec21_1).swap(*vec21_2);
  for (int j=0; j<11; j++) {
    (*vec21_2).push_back(j);
  }
}

struct S21 {
  bool action();
};

bool S21::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec21_1,vec21_2;

  for (size_t i=1; i<N; ++i) {
    vec21_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec21_2.push_back(i);
  }
  
  for (int i=0; i<vec21_1.size(); ++i) {
    if (i == 3) {
      func21(&vec21_1,&vec21_2);
    }
    m += vec21_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub21()
{
  S21 obj;

  if (obj.action() == true) {
    std::puts("NG 21");
  } else {
    std::puts("OK 21");
  }
}
