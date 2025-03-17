extern "C" int memcmp(const void *, const void *, unsigned int);
#include <stdio.h>
int main() {
  char *p = "abcd";
  int i = 10;
  int j = 1;
  int x;
#pragma omp parallel
  i = j + 10;
#pragma omp parallel
  x = memcmp(p, "abcd", sizeof("abcd"));
#pragma omp parallel
  i = j + 10;

  puts("ok");
}
