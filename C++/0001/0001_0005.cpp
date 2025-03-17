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
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }

  it = arr.begin();
  do {
    m += *it;
    ++it;
  } while (it != arr.end());

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
