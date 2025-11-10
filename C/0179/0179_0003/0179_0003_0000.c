#include <stdio.h>

extern int all_delete_by_opt(int i);

int main(void)
{
  int i;
  i = 0;
  if (all_delete_by_opt(i) > 0) {
    printf("ng\n");
  } else {
    printf("ok\n");
  }
}
