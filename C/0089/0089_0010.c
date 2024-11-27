#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {

  char *sp =  (char *)malloc(70);
 
  memset(sp, '\0', 70);
  memset(sp, '*', 65);
  printf("%s\n", sp);

  free(sp);
  return 0;
}
