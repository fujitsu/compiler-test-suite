#include <stdio.h>

void sub(void);

int main(void)
{
  sub();
  return 0;
}

void sub(void) {
  int i;
  int j;
  
  for (i = 0; i < 6; ++i) {
    for (j = 0; j < 6; ++j) {
      printf("%d ", j);
    }
    printf("\n");
  }
}
