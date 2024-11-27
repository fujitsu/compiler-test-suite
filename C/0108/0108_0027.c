#include <stdio.h>
static void aaa () {
  puts ("NG");
}

int main() {
  printf("OK\n");
  if (0) {
    aaa ();
  }
}

