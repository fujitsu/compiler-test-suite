#include <cassert>
#include <cstdlib>

int flag = 0;

void *operator new[](size_t sz) {
  void *m = malloc(sz);
  assert(m);
  return m;
}

void operator delete[](void *p) noexcept {
  flag = 1;
  return free(p);
}

void operator delete[](void *p, size_t size) noexcept {
  flag = 2;
  return free(p);
}

void test() {
  delete[] new int[3];
  assert(flag == 1);

  flag = 0;
  delete[] (void *)new int[3];

#if defined(__clang__) || defined(__EDG_VERSION__)
  assert(flag == 1);
#else
  assert(flag == 0);
#endif
}

int main() { test(); }
