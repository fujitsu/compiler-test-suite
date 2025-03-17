#include <iostream>
#include <vector>

#define N 30
#define Answer 435249914154
#define ELEMENT_TYPE int

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  std::vector<ELEMENT_TYPE> vec1,vec2;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; ++i) {
    vec1.push_back(i);
  }
  for (size_t i=1; i< 50; ++i) {
    vec2.push_back(i);
  }
  for (it = vec1.begin(); it != vec1.end(); ++it) {
    m += *it;
    if ((int)*it == 3) {
      vec1.swap(vec2);
      it = vec1.begin();
    }
  }
  printf("%d\n",m);
  printf("%d\n",Answer);
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
