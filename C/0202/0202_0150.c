#include <stdio.h>

int main() {
  int len = 10, i;
  float vla[10], j=10;

  for (i = 0;i < len; i++) {
    vla[i] = 0;
  }

  {
    for (i = 0; i < 10; i++) {
      vla[i] += i;
      vla[i] *= i;
      vla[i] -= i;
      vla[i] /= i;
      j++;
      ++j;
      j--;
      --j;
    }
  }

  printf(" OK \n");
  return 0;
}
