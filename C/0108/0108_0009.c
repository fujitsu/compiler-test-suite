#include <stdio.h>
#define N 10
int main() {
  int i=0;
  int res[N];
  
 loop:
  if (i >= N) goto end;
  res[i] = 3;
  i++;
  goto loop;
  
 end:
  for (i=0; i<N; i++) {
    if (res[i] != 3) {
      printf("res[%d] = %d\n", i, res[i]);
    }
  }
  printf("OK\n");
}
