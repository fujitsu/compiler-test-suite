#include <stdio.h>

int sub(int in) {
  int ret = 0;
  for (int i = 0; i < in; i++) {
    ret++;
  }
  if (in > 20)
    throw 10;

  return ret;
}

int main() {
  try {
    int ret;
    ret = sub(10);
    if (ret == 10)
      puts("OK1");
    ret = sub(30);
    puts("NG");
    sub(50);
  } catch (int) {
    puts("OK2");
  } catch (...) {
    puts("NG");
  }
  puts("OK3");
}
