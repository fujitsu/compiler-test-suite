#include <iostream>
#include <vector>

#define N 100
#define Answer 4950
#define ELEMENT_TYPE long long int

template<class T>
int add_temp(ELEMENT_TYPE n, T& vec, ELEMENT_TYPE m){
  if (n < vec.size()) { 
    m += n;
    return add_temp(++n, vec, m);
  } else {
    m += n;
    return m;
  }
}

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  ELEMENT_TYPE start = 0; 
  std::vector<ELEMENT_TYPE> vec;

  for (size_t i=1; i<N; ++i) {
    vec.push_back(i);
  }
  m = add_temp(start, vec, m);
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
