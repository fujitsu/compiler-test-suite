#include <stdio.h>
#include <stdlib.h>
int old(int a,int b);
#pragma redefine_extname old new
int new(int a,int b) {
  printf("redefine_extname OK %d \n",a+b);
  return 0;
}

int main() {
  old(3,5);
  return 0;
}
