
#include <stdio.h>
#include <stdlib.h>
int old();
#ifdef __PRAGMA_REDEFINE_EXTNAME
#pragma redefine_extname old new
#else
int old() {
  printf("redefine_extname NO support\n");
  return 0;
}
#endif

int new() {
  printf("redefine_extname support\n");
  return 0;
}

int main() {
  old();
  return 0;
}

