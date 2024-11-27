#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {

  char *sp = (char *)malloc(51);
  char s[51];
  int i;

  memset(s, '*', 50);
  s[50] = '\0';
  printf("(%s)\n", s);

  memcpy(sp, s, sizeof(s));

  printf("(%s)\n", sp);

  free(sp);
  return 0;
}
