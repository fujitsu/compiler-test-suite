
#include <stdio.h>
#include <stdlib.h>
#define NUM 10000000

int main() {
#if defined(__GNUC__)
  for (int i=1,buf[i]; i <= NUM; i++) {
#else
  int i=1,buf;
  for (i=1; i <= NUM; i++) {
#endif

    if (4!=sizeof(buf))
      printf("err i(%d)=: %d\n",i,sizeof(buf));
  }
  printf("End\n");
  return 0;
}
