#include <cstdio>
#ifdef _OPENMP
#include <omp.h>
#else
inline int omp_get_max_threads() { return 1; }
inline int omp_get_thread_num() { return 0; }
#endif

struct S {
  ~S() { printf("S dtor()\n"); }
};

int add(int a, int b) { return a + b; }

void test() {
  const int num_threads = omp_get_max_threads();
  int c[256];
  S obj;

  for (int i = 0; i < num_threads; i++) {
    c[i] = 0;
  }

#pragma omp parallel
  {
    int num = omp_get_thread_num();
    for (int i = 0;;) {
      i++;
      if (i > 10) {
        goto break_label;
      }
      c[num] = add(c[num], i);
    }
  break_label:;
  }

  for (int i = 0; i < num_threads; i++) {
    if (c[i] != 55)
      printf("%d\n", c[i]);
  }
  printf("%d\n", c[0]);
}

int main() {
  test();

  return 0;
}
