#include <iostream>
#include <array>

#define N 100
#define Master 4950
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

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (int it = 0; it != arr.size(); ++it) {
    m += arr[it];
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
