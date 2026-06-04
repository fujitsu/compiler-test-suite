extern int volatile a;
extern int main1(void);

#include <stdio.h>
int main(void)
{
  int res;
  a = 0;
  res = main1();
  printf ("a: %d\n", a);
  printf ("res: %d\n", res);
  return 0;
}
