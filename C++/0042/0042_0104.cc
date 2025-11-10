#include <cstdio>

inline namespace B {
  const char *func() {return "func() called.";}
}

int main()
{
  printf("%s\n", B::func());
  printf("%s\n", func());
}
