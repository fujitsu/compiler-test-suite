#include <stdio.h>
float a[100][100],b[100][100];
float k[100];

int foo(void) {
  int i,j,x;
  k[0] = 1;
  for (i=0;i<99;i++) {
    x = (int)k[i];
    for (j=0;j<100;j++) {
      a[i][j] = b[i][j];
    }    
    k[i+1] = i;
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

  if ((int)a[10][10] != 1) {
    printf("ng\n");
  }
  if (x != 97) {
    printf("ng\n");
    printf("%d\n",x);
  }
  printf("ok\n");
  
  return 0;
}
