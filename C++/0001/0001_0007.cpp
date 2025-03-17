#include <iostream>
#include <array>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned int

template<class T>
int add_temp(ELEMENT_TYPE *it, T& arr, ELEMENT_TYPE m){
  if (it != arr.end()) { 
    m += *it;
    return add_temp(++it, arr, m);
  } else {
    return m;
  }
}

struct S {
  bool action();
};

bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  const int max = N;
  std::array<ELEMENT_TYPE,max> arr;
  std::array<ELEMENT_TYPE,max>::iterator start_it; 

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  start_it = arr.begin();
  m = add_temp(start_it, arr, m);
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
