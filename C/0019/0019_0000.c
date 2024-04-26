/****************************************************************
 * This is a test of using the restrict modifier as an argument.
 * _Bool type
 ****************************************************************/
#include <stdio.h>

void restrict_bool(_Bool *restrict a, _Bool * restrict b)
{
  *a = 1;
  *b = 0;
  if (*a == 1) {
    printf("restrict : ok\n");
  } else {
    printf("restrict : ng : %d, %d\n", *a, *b);
  }
}

int main(void)
{
  _Bool a = 0;
  restrict_bool(&a, &a);
  return 0;
}
