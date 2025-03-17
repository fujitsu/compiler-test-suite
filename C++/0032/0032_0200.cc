#include <stdio.h>
int main()
{
  char c = 2;
  int i = 0x08080808;
  i <<= c;
  if (i == 0x20202020) {
    i >>= c;
    if (i == 0x08080808)
      printf("ok\n");
    else
      printf("ng\n");
  }
}
