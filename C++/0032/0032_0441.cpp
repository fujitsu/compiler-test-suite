struct S1 {
  const char *str;
  S1() { }
  S1(const char *p) :str(p) { }
  ~S1() { }
};

struct S2 {
  struct S1 mem[2];
};

S2 array[] = { { "abc" }, { "def" } };

#include <cstdio>

int main()
{
  printf("tested\n");
  return 0;
}

