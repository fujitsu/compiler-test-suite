#include <stdio.h>
int a[100][100],b[100][100];
int k[100];

int foo(void) {
  int i,j,x;
  for (i=0;i<100;i++) {
    k[i] = i;
    for (j=0;j<100;j++) {
      a[i][j] = b[i][j];
    }    
    x = k[i];
  }
  return x;
}

int main() {
  int i,j,x;

  for (i=0;i<100;i++) {
    for (j=0;j<100;j++) {
      a[i][j] = 0;
      b[i][j] = 1;
    }    
  }

  x = foo();

  if (a[10][10] != 1) {
    printf("ng\n");
  }
  if (x != 99) {
    printf("ng\n");
    printf("%d\n",x);
  }
  printf("ok\n");
  
  return 0;
}
