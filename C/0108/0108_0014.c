#include <stdio.h>
#define N 10
int array[N];
int res[N];
int main() {
  int i,tmp = 0;

  for (i=0; i<N; i++) {
    array[i]=1;
  }
#if defined(DEBUG)
  for (i=0; i<N; i++) {
    printf("a[%d] = %d\n",i ,array[i]);
  }
#endif  

  for (i=0; i<N; i++) {
    if (array[i]==1) {
      tmp = 1;
    } else {
      tmp = 2;
    }
    res[i] = tmp;
  }

  for (i=0; i<N; i++) {
    if (res[i] != 1) {
      printf("res[%d] = %d\n",i ,res[i]);
    }
  }
  printf("OK\n");
}
