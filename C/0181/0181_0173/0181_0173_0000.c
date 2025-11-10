

#include <stdio.h>
int var;
extern int boo(void);

int main(void) {
  var = 0;
  boo();
  if (var == 0) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  return 0;
}
