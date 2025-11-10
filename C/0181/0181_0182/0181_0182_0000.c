

#include <stdio.h>
extern int boo(void);

int main(void) {
  if (boo() == 1) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
