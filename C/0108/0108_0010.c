#include <stdio.h>

int main() {
  puts ("a");
  goto xxx;
  puts ("b");
 xxx:
  puts ("c");
}

