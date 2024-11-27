#include <stdio.h>

int sub (int a, int b) {
  return a + b;
}

int main() {
  int ret;

  if (sub(0,1)) {
    puts ("OK");
    ret = 1;
  } else {
    puts ("NG");
    ret = 0;
  }

  for (int i=0; i<10; i++) {
    ret += sub (2,3);
  }

  printf ("%d\n", ret);
  
}
