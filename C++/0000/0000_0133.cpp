#include <iostream>
#include <vector>

#define N 100
#define Answer 1617
#define ELEMENT_TYPE unsigned long long int
#define K 3

struct S {
  bool action();
};

static int get_step(void) {
  return K;
}

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  int k;

  std::vector<ELEMENT_TYPE> vec;
  std::vector<ELEMENT_TYPE>::iterator it;  

  for (size_t i=1; i<N; i++) {
    vec.push_back(i);
  }
  k = get_step();
  for (it = vec.begin(); it != vec.end(); it=it+k) {
    m += *it;
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
