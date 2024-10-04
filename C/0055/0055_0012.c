#include <stdio.h>

int up[2048] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int low[2048] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int own_start[2048] = {0, 1, 3, 6, 10};
int loop_num[2048] = {3};

int foo (void) {
  int i, j, start, total;
  int end = own_start[0];
  int n = loop_num[0];

  total = 0;
  for (i = 0; i < n; i++) {
    start = end;
    end = own_start[i+1];
    for (j = start; j < end; j++) {
      total += up[j] * low[j];
    }
  }
  return total;
}

int main(void) {
  int res;
  res = foo();
  if (res == 91) {
    printf("OK\n");
  }else {
    printf("NG %d\n", res);
  }
  return 0;
}
