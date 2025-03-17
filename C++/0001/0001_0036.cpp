#include <iostream>
#include <array>

#define N 102
#define Master 1683
#define ELEMENT_TYPE long long int
#define K 3

struct S {
  bool action();
};

static int get_step(void) {
  return K;
}

using namespace std;
bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  int k;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  k=get_step();
  for (it = arr.begin(); it != arr.end(); it=it+k) {
    m += *it;
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
