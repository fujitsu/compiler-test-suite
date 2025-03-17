#include <cassert>
#include <cstdlib>

int flag = 0;

void *operator new(size_t sz) {
  void *m = malloc(sz);
  assert(m);
  return m;
}

void operator delete(void *p) noexcept {
  flag = 1;
  return free(p);
}

void operator delete(void *p, size_t size) noexcept {
  flag = 2;
  return free(p);
}

void test() {
  delete new int(2);
  assert(flag == 2);

  flag = 0;
  delete (void *)new int(2);
  assert(flag == 1);
}

int main() { test(); }
