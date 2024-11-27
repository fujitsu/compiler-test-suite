#include <stdio.h>
volatile unsigned int a;
static int sub() {
  if ((int)a < 0) printf("ok\n");
  else            printf("ng\n");
}
int main() {
  a = -10;
  sub();
}
