#include <stdio.h>

int cc[20];
int dd[20];
int n = 20;
int m = 20;

int main() {
  int array[20];
  int ans[20];
  int i;

  for (i=0; i<n; i++) {
    cc[i] = i + 1;
    dd[i] = i + 2;
    array[i] = i;
  }
  
  for (i=0; i<m; i++) {
    if (cc[i] == 0 && dd[i] == 0) {
      array[11] = array[10] - cc[i];
      array[10] = array[11] + dd[i];
    } else {
      array[11] = array[10] * cc[i];
      array[10] = array[11] / dd[i];
    }
    ans[i] = array[10] = cc[i];
  }
  
  if (ans[10] == 11) {
    printf("OK\n");
  } else {
    printf("NG %d\n",ans[10]);
  }

  return 0;
}
