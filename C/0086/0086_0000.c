#include <stdio.h>

#if defined(__GNUC__) && !defined(__clang__)

int main()
{
  int i;
  void inn(void) {
    i++;
  }
  i = 1;
  inn();
  if (i == 2) {
    puts("PASS");
  }
  else {
    puts("NG");
  }
  return 0;
}

#else

int main()
{
  int i;
  i = 1;
#pragma omp parallel shared(i)
  {
#pragma omp master
    {
      i++;
    }
  }
  if (i == 2) {
    puts("PASS");
  }
  else {
    puts("NG");
  }
  return 0;
}

#endif
