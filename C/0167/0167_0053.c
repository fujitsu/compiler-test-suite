#include <stdio.h>

int main(void) {
  int i,j,k;
  int a[100][100][100],b[100][100],cond[100];
  int ans=49005000;
  int total=0;

  for(i=1;i<100;++i) {
      cond[i] = i%2;
    for(j=1;j<100;++j) {
      b[i][j] = i+j;
      for(k=1;k<100;++k) {
	a[i][j][k] = 0;
      }
    }
  }


  for(i=1;i<100;++i) {
    if(cond[i] == 0) goto POINT1;
      for(j=1;j<100;++j) {
	for(k=1;k<100;++k) {
	  a[i][j][k] = b[j][k];
	}
      }
  POINT1:
      continue;
  }


  for(i=1;i<100;++i) {
    for(j=1;j<100;++j) {
      for(k=1;k<100;++k) {
	total += a[i][j][k];
      }
    }
  }

  if(total == ans) {
    printf("OK\n");
  } else {
    printf("NG : %d \n",total);
  }
  
  return 0;
}
