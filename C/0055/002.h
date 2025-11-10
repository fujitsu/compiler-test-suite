#include <stdio.h>

void output(int a[3][3]) {
  int i,j,res=0;
  for(i=0; i<3; ++i) {
    for(j=0; j<3; ++j) {
      res += a[i][j];
    }
  }
  printf("%d\n", res);
}
