#include <stdio.h>

int Count;

class Class {
  int m01;

public:
  Class() { printf("Class.ctor() : %d\n", m01 = ++Count); }
  ~Class() { printf("Class.dtor() : %d\n", m01); }
};

void getN(int n) {
  Class buf[n];
  if (Count)
    throw 1;
}

int main() {
  try {
    getN(3);
  } catch (int) {
    printf("caught.\n");
  }
  return 0;
}
