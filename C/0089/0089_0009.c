#include <stdio.h>
#include <string.h>

int main()
{
  char sss[60];
  int i;

  for (i = 0; i < 61; ++i) {
    if ((int)(sss + i) % 4 == 0 && (int)(sss + i) % 8 != 0 ) {
      memset(&sss[i], 0x30, 2);
      sss[i+2] = '\0';
      printf("(%s)\n", &sss[i]);
      break;
    }
  }
  return 0;
}
