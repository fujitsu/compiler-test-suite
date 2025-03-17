#include <iostream>
#include <array>

#define N 100
#define Master 4950
#define ELEMENT_TYPE unsigned long long int
#define IND_TYPE int

struct S {
  bool action(int n);
};

using namespace std;
bool S::action(int n) {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (IND_TYPE j=0; j<arr.size()-n;++j) {
    m += arr[j+n];
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

int main() {
  S obj;
  int n = 1;
  if (obj.action(n) == true) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }

  return 0;
}
