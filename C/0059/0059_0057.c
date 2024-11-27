#include <stdio.h>
#include <stdlib.h>
int old();
int new() {
  printf("redefine_extname OK\n");
  return 0;
}

#pragma redefine_extname old  new

int main() {
  old();
  return 0;
}
