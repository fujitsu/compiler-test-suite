#include <stdio.h>

int cc[20];
int dd[20];
int n = 20;
int m = 20;

int main() {
  int array[20];
  int i;

  for (i=0; i<n; i++) {
    cc[i] = i + 1;
    dd[i] = i + 2;
    array[i] = i;
  }
  
  for (i=0; i<m; i++) {
    array[11] = array[10] + array[12];
    if (cc[i] == 0 && dd[i] == 0) {
      array[10] = array[11] + array[10] ;
    }
  }
  
  if (array[10] == 10) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }

  for (i=0; i<m; i++) {
    array[11] = array[10] + array[12];
    if (cc[i] > 0 && dd[i] > 0) {
      array[10] = array[11] - array[10];
    }
  }
  
  if (array[10] == 12) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }

  return 0;
}