#include <stdio.h>
#include <stdlib.h>

int main()
{
  int* ap[9][0x18001];
  int i, loop;
  for (loop = 0; loop < 6; ++loop)
    for (i = 0; i < 0x18000; ++i) {
      if ((ap[loop][i] = (int *)malloc(4<<(2*loop))))
        *ap[loop][i] = (i+1)*loop;
    }
  for (loop = 5; 0<=loop ; --loop)
    for (i = 0; i < 0x18000; ++i) {
      if (ap[loop][i] && *ap[loop][i] != (i+1)*loop) {
        printf("ng\n");
        exit(1);
      }
      free(ap[loop][i]);
    }
  printf("ok\n");
}
