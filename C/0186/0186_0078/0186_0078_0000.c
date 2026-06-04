
#include <stdio.h>
#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#endif
long sub(int *i_pointer, long *l_pointer);
int main() {
  long double l_double = 0.0;
  int *i_pointer  = (int *)&l_double;
  long *l_pointer = (long *)&l_double;

  if (sub(i_pointer, l_pointer) == 30) {
    PRINT_OK;
  } else {
    PRINT_NG;
  }
  return 0;
}
