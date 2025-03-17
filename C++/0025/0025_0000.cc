#include <stdio.h>
int main() {
  int count = 10;
  int ans = 0;
  try {
    throw count;
  } catch (...) {
    while (count--) {
      ans++;
    }
    printf("%d\n", ans);
  }
}
