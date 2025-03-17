#include <stdio.h>

int main() {
  try {
    puts("OK1");
  } catch (...) {
    puts("NG");
  }
  puts("OK2");
  return 0;
}
