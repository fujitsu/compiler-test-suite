#include <stdio.h>
int main() {
  int i=0;
  int j=0;

 LOOP1:
  if (i < 100) {
    ++i;
    goto LOOP2;
  } else {
    return 0;
  }

  j = j + 1;
  printf("not reach");

 LOOP2:
  goto LOOP1;
}
