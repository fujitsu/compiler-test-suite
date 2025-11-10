

#include <stdio.h>
extern int boo(void);

int main(void) {
  static int var = 0;
  boo();
  if (var == 0) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
