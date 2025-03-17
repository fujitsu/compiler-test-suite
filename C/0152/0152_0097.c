#include <stdio.h>
double a[100][100],b[100][100];
double k[100];

void foo(void) {
  int i,j;
  for (i=0;i<100;i++) {
    k[i] = (double)i;
    for (j=0;j<100;j++) {
      a[i][j] = b[i][j];
    }    
  }
  return;
}

int main() {
  int i,j;

  for (i=0;i<100;i++) {
    for (j=0;j<100;j++) {
      a[i][j] = 0;
      b[i][j] = 1;
    }    
  }

  foo();

  if ((int)a[10][10] != 1) {
    printf("ng\n");
  }
  if ((int)k[10] != 10) {
    printf("ng\n");
    printf("%d\n",k[10]);
  }
  printf("ok\n");
  
  return 0;
}
