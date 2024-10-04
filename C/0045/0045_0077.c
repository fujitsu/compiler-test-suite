#include <stdio.h>
int func() { return 8; }
int item01() {
  int i,d[10];
  i  = 0;
  do {
    d[i] = func();
    printf("%d %d\n",i,d[i]);
    ++i;
  } while(i < 10);
  printf("ans.8  %d \n",d[0]);
  return(0);
}
int main() { item01(); }

