
#include "stdio.h"
#include "math.h"
int main()
{

  int i,j,k;
  double a[100][101],b[100][101],s;

  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      a[j][i]=i;
      b[j][i]=i;
    }
  }
  for (j=0;j<10;j++){
    for (k=0;k<10;k++){
      s=0;
      for (i=0;i<10;i++){
	s=s+a[k][i]*b[j][k];
      }
    }
  }
  printf("result=%f \n",s);
}
