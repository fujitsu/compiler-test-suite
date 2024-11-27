#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {

  char *sp = (char *)malloc(10);
  char *s = (char *)malloc(10);

  int i;

  memset(s, '*', 9);
  s[9] = '\0';
  printf("(%s)\n", s);

  memcpy(sp, s, 10);

  printf("(%s)\n", sp);

  free(sp);
  free(s);
  return 0;
}
