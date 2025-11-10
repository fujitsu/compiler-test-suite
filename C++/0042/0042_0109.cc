#include <cstdio>

int func() {
  int (*x)();
  x = [](){return 10;};
  return x();
}

int main()
{
  printf("%s\n", func()==10 ? "OK" : "NG");
}
