#include <stdio.h>

int main() {
  int ng_count = 0;

#if defined(__GNUC__)
  int a, b, r;
  int dummy;

  a = 1;
  b = 2;
  dummy = 10;
  r = __sync_lock_test_and_set(&a, b, &dummy);
  if (!(r == 1 && a == 2 && dummy == 10)) {
    printf("lock_test_and_set NG: r=%d, a=%d, dummy=%d\n", r, a, dummy);
    ng_count++;
  }
  dummy = 10;
  __sync_lock_release(&a, &dummy);
  if (!(a == 0 && dummy == 10)) {
    printf("lock_release      NG: a=%d, dummy=%d\n", a, dummy);
    ng_count++;
  }

#endif 

  if (ng_count == 0) {
    printf("OK\n");
  }
  return 0;
}
