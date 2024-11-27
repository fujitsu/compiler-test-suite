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

int test() {
  struct sta  a1;
  int ans;

  a1.sta_m1 = b1;
  ans = b1.stb_m1 + b1.stb_m2;
  printf("%d\n",a1.sta_m1.stb_m1);
  return ans;
}
int main() {
  b1.stb_m1 = 1;
  b1.stb_m2 = 2;
  test(b1);
}
