#include <stdio.h>
#include <stdlib.h>
int x();
#pragma redefine_extname x new
int new() {
  printf("redefine_extname OK\n");
  return 0;
}

int main() {
  x();
  return 0;
}
