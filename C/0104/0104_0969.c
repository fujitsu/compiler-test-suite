
#include <stdio.h>
#define N (1024)

int main(void) {
  unsigned int u=0, c=0;
  while (u != (unsigned int)0xffffff9c) {
    c++;
    u += 0x7fffffff;
  }

  if ( c==100 ) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

