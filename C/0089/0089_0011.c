#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {

  char *sp =  (char *)malloc(10);
 
  memset(&sp[3], '*', 3);
  sp[6] = '\0';
  printf("%s\n", &sp[3]);

  free(sp);
  return 0;
}
