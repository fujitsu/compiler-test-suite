#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {

  char *sp = (char *)malloc(24);
  int i;

  memset(sp, 0, 24);
  memset(sp, '*', 8);
  memset(&sp[8], '#', 8);
  printf("(%s)\n", sp);

  memcpy(sp, &sp[8], 8);

  printf("(%s)\n", sp);

  free(sp);
  return 0;
}
