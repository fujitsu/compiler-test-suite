#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {

  char *sp = (char *)malloc(72);
  char *s = (char *)malloc(72);
  int i;

  memset(s, '*', 71);
  s[71] = '\0';
  printf("(%s)\n", s);

  memcpy(sp, s, 72);

  printf("(%s)\n", sp);

  free(sp);
  free(s);
  return 0;
}
