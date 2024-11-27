

#include <stdio.h>
#include <stdlib.h>

void sub (int x) {

  printf("sub start\n");

  if (x == 0) {
    exit (1);
    printf("NG");
  }
  
  printf("sub end\n");
  return ;
}

int main() {
  sub (10);
  sub (10);
  sub (10);
  sub (0);
  sub (10);
} 
