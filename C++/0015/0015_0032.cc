#include <stdio.h>

void func();
#if !defined(NO_FUNC_DEFINE)
void func() {throw 1;}
#endif

int n = 1;

int main()
{
  try {
    for (int i = 0; i < n; ++i) {
      func();
    }
  } catch(...) {
    puts("catch");
  }
  return 0;
}
