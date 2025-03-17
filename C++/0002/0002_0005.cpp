#include <stdio.h>
#include <vector>

#define N 100
#define Master 1401
#define ELEMENT_TYPE long long int

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  bool flag = true;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i< N; ++i) {
    vec.push_back(i);
  }
  for (it = vec.begin(); it != vec.end(); ++it) {
    m = m + *it;
    if(flag){
      vec = {100, 200, 300, 400, 500};
      flag = false;
    }
  }
  if (m != Master) {
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
