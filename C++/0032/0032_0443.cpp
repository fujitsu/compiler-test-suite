struct S1 {
  int mem;
  S1() :mem(0) { }
  S1(int p) :mem(p) { }
  ~S1() { }
};

struct S2 {
  S1 mem[2];
};

S2 array[2] = { { 1 }, { 2 } };

#include <cstdio>

int main()
{
  printf("tested\n");
  return 0;
}

