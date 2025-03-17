#include <iostream>
#include <array>

#define N 99
#define Master 2450
#define ELEMENT_TYPE unsigned int

struct S {
  bool action();
};

using namespace std;
bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  ELEMENT_TYPE *it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = arr.end()-1; it != arr.begin(); --it) {
    m += *it;
    --it;
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
