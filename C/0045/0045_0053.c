



#include <stdlib.h>
#include <stdio.h>
#define N1  5
#define N2  5
#define N3  5
int a[N1][N2][N3];
int b[N1][N2][N3];
void init();
int output(int array[N1][N2][N3]);

void alias(int *x, int **px) {
  *px = x;
}
int main(){
  int i1,i2,j1;
  int nj1=N2, *pnj1;
  
  alias(&nj1, &pnj1);
  init();

  j1=0;
 label_j1:
  {
    i1=0;
  label_j1i1:
    {
      a[i1][j1][0]=i1+(N1*j1)+1;
      i1++;
      if (i1<N1) goto label_j1i1;  
    }
    i2=0;
  label_j1i2:
    {
      b[i2][j1][0]=i2+(N1*j1)+1;
      i2++;
      *pnj1=N2/2;
      if (i2<N1) goto label_j1i2;  
    }
    j1++;
    if (j1<nj1) goto label_j1;  
  }

  printf("a = %d\n", output(a));
  printf("b = %d\n", output(b));

  return 0;
}

void init()
{
  int i,j,k;
  for(k=0;k<N3;k++){
    for(j=0;j<N2;j++){
      for(i=0;i<N1;i++){
	a[i][j][k] = -i;
	b[i][j][k] = -i;
      }
    }
  }
}

int output(int array[N1][N2][N3])
{
  int i,j,k,s=0;
  for(k=0;k<N3;k++) {
    for(j=0;j<N2;j++) {
      for(i=0;i<N1;i++) {
	s += array[i][j][k];
#ifdef DEBUG
	printf("%d ",array[i][j][k]);
#endif
      }
    }
  }
#ifdef DEBUG
  printf("\n");
#endif
  return s;
}
