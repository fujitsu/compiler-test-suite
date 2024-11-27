#include <stdio.h>

int cc[20];
int dd[20];
int n = 20;
int m = 20;

int main() {
  int array[20];
  int ans[20];
  int i;
  int flag = 0;
  
  for (i=0; i<n; i++) {
    cc[i] = i + 1;
    dd[i] = i + 2;
    array[i] = i;
  }
  
  for (i=0; i<m; i++) {
    array[11] = array[10] + 1;
    if (cc[i] > 0 && dd[i] > 0) {
      ans[10] = array[10];
    } else {
      ans[10] = array[10] * 10;
    }
    if (ans[10] == array[10]) {
      flag = 1;
    }
  }
  if (flag) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
  return 0;
}
