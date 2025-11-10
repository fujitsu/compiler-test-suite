#include <stdio.h>

void input(int a[3][3]) {
  int i,j,k;
  int ini[9]={1,5,3,2,4,7,4,6,2};
  k=0;
  for(i=0; i<3; ++i) {
    for(j=0; j<3; ++j) {
      a[i][j] = ini[k++];
    }
  }
  printf("%d\n", a[0][0]);
}

