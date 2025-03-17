#include <iostream>
#include <array>

#define N 100
#define Master 5050
#define ELEMENT_TYPE unsigned int

struct S {
  bool action();
};

using namespace std;
bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;
  ELEMENT_TYPE x = 1;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  
  for (it = arr.begin(),x=1;it != arr.end() && x != 0;it++) {
    m += *it+x;
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
