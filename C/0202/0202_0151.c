#include <stdio.h>

int main() {
  int len = 10, i;
  float vla[len];

  for (i = 0;i < len; i++) {
    vla[i] = 0;
  }

  {
    for (i = 0; i < 10; i++) {
      vla[i] += i;
    }
  }

  printf(" OK \n");
  return 0;
}
