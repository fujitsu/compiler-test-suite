#include <iostream>
#include <vector>
using namespace std;

#define N 50
#define N2 30
#define Answer 435
#define ELEMENT_TYPE long long int

void func2(vector<ELEMENT_TYPE> *vec1, vector<ELEMENT_TYPE> *vec2) {
  int j=0;
  while (j<11) {
    (*vec1).swap(*vec2);
    j++;
  }
}

void func1(vector<ELEMENT_TYPE> *vec1, vector<ELEMENT_TYPE> *vec2) {
  int j=0;
  while (j<11) {
    func2(vec1,vec2);  
    j++;
  }
}

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  std::vector<ELEMENT_TYPE> vec1,vec2;

  for (size_t i=1; i<N; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i<N2; ++i) {
    vec2.push_back(i);
  }
  
  for (int i=0; i<vec1.size(); ++i) {
    if (i == 3) {
      func1(&vec1,&vec2);
    }
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
