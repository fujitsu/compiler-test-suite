#include <stdio.h>

struct stb {
  int stb_m1;
  int stb_m2;
};
struct sta {
  struct stb  sta_m1;
  int         sta_m2;
};

struct stb  b1;
int value = 10;

void test() {
  struct sta  a1;

  a1.sta_m1 = b1;
  b1.stb_m1 = 10;
  printf("%d\n",a1.sta_m1.stb_m1);
  printf("%d\n",a1.sta_m1.stb_m2);
  printf("%d,%d\n",b1.stb_m1,b1.stb_m2);
}
int main() {
  b1.stb_m1 = 1;
  b1.stb_m2 = 2;
  test(b1);
}
