#include <stdio.h>

extern int sub1(void);
extern int sub2(void);
extern int sub3(void);
extern int sub4(void);

int main()
{
  if (sub1() == 1 &&
      sub2() == 1 &&
      sub3() == 1 &&
      sub4() == 1) {
    puts("OK");
  }

  return 0;
}
