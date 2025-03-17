#include <iostream>
#include <vector>

#define N 100
#define Answer 45
#define ELEMENT_TYPE long long int

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  bool flag = true;

  std::vector<ELEMENT_TYPE> vec1,vec2;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i< N; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i< 10; ++i) {
    vec2.push_back(i);
  }
  for (it = vec1.begin(); it != vec1.end(); ++it) {
    m = m + *it;
    if(flag){
      vec1 = vec2;
      flag = false;
    }
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
