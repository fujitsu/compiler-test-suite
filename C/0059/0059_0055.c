#include <stdio.h>
#include <stdlib.h>
int aaaaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeee();
#pragma redefine_extname aaaaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeee new

int new() {
  printf("redefine_extname OK\n");
  return 0;
}

int main() {
  aaaaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeee();
  return 0;
}
