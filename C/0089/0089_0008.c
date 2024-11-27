#include <stdio.h>
#include <string.h>

int main()
{
  char sss[300];
  int i;

  for (i = 0; i < 301; ++i) {
    if ((int)(sss + i) % 8 == 0) {
      memset(&sss[i], '*', 2);
      sss[i+2] = '\0';
      break;
    }
  }

  return 0;
}
