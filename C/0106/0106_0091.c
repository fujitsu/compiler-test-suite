#include <stdio.h>
int main()
{
  float a[100],b[100][10][100];
  float r4s1;
  int   ii[100];
  int i,j,k,m;

  for (i=0;i<100;i++) {
  for (j=0;j<10;j++) {
  for (k=0;k<100;k++) {
    b[i][j][k] = k;
  }
  }
  }
  for (i=0;i<100;i++) {
    ii[i] = i;
    a[i] = i;
    if (i-((i/2)*2) == 0) {
      a[i]=0;
    }
  }

  for (i=0;i<100;i++){  
    for (j=0;j<10;j++){ 
      r4s1 = 0;
      m = ii[i];
      for (k=0;k<m;k++){ 
 	if (a[j] != 0) {
          r4s1 =  b[i][j][k] +1;
	}
      }
    }
  }
  printf("r4s1 = %f \n",r4s1);
  return 0;
}
