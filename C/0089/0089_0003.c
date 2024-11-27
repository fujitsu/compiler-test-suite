#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {

  char *sp = (char *)malloc(12);
  char s[51];
  int i;

  memset(s, '*', 50);
  s[50] = '\0';
  printf("(%s)\n", s);

  memcpy(&sp[1], &s[40], 11);

  printf("(%s)\n", &sp[1]);

  free(sp);
  return 0;
}
