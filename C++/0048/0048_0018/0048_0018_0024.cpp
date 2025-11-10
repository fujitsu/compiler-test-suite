#include <cstdio>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Master 435
#define ELEMENT_TYPE long long int

void func25_2(vector<ELEMENT_TYPE> &vec25_1,
	      vector<ELEMENT_TYPE> &vec25_2) {
  (vec25_1).swap(vec25_2);
  for (int j=0; j<5; j++) {
    vec25_2.push_back(j);
  }
}

void func25_1(vector<ELEMENT_TYPE> &vec25_1,
	      vector<ELEMENT_TYPE> &vec25_2) {
  func25_2(vec25_1,vec25_2);  
  for (int j=0; j<5; j++) {
    vec25_2.push_back(j);
  }
}

struct S25 {
  bool action();
};

bool S25::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec25_1,vec25_2;

  for (size_t i=1; i<N; ++i) {
    vec25_1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec25_2.push_back(i);
  }
  
  for (int i=0; i<vec25_1.size(); ++i) {
    if (i == 3) {
      func25_1(vec25_1,vec25_2);
    }
    m += vec25_1[i];
  }
  if (m != Master) {
    flg = true;
  }
  return flg;
}

void sub25()
{
  S25 obj;

  if (obj.action() == true) {
    std::puts("NG 25");
  } else {
    std::puts("OK 25");
  }
}
