#include <stdio.h>

void sub (int a) {
  int x;

  x = (a != 1) ? 10:20;
  printf("%d\n", x);

  x = (a == 1) ? 10:20;
  printf("%d\n", x);  

  x = (a == 100) ? 10:20;
  printf("%d\n", x);  

}

int main() {
  sub (1);
}
