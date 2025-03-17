#include <stdio.h>
int a[100][100],b[100][100];
int k;

int foo(void) {
  int i,j,k,x;
  for (i=0;i<100;i++) {
    x = k;
    for (j=0;j<100;j++) {
      a[i][j] = b[i][j];
      k = i+j;
    }    
  }
  return x;
}

int main() {
  int i,j,k;

  for (i=0;i<100;i++) {
    for (j=0;j<100;j++) {
      a[i][j] = 0;
      b[i][j] = 1;
    }    
  }

  k = foo();

  if (a[10][10] != 1) {
    printf("ng\n");
  }
  if (k != 197) {
    printf("ng\n");
  }
  printf("ok\n");
  
  return 0;
}
