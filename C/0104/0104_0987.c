#include <stdio.h>
#ifdef FUNCN_FOO
#define MAINF foo
#else
#define MAINF MAIN__
#endif
int MAINF(void) {
  printf("ok\n");

  return 0;
}
int main() {
  MAINF();
  return 0;
}
