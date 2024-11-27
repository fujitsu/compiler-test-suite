#include <stdio.h>
int main()
{
  int i,j;
  int buf[4];

  j = 0;
  for (i=0; i<4; i++) {
    buf[j] = i;
    if (i == 3) {
      j = j + 1;
      buf[j] = 0;
    }
  }
  printf("value = %d\n",buf[0]);
}

