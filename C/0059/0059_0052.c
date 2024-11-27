
#include <stdio.h>
#include <stdlib.h>
int old();
#pragma redefine_extname old new
int new() {
  printf("redefine_extname OK\n");
  return 0;
}

int main() {
  old();
  return 0;
}
