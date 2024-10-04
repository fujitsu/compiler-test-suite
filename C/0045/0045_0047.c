


#include <stdlib.h>
#include <stdio.h>
#define N 10
int a[N][N][N];
int b[N][N][N];
void init();
int output(int array[N][N][N]);
int main(){
  int i1,i2,j1;

  init();

  j1=0;
 label_j1:
  {
    i1=0;
  label_j1j1:
    {
      a[i1][j1][0]=i1+(N*j1)+1;
      i1++;
      if (i1<N) goto label_j1j1; 
    }
    i2=0;
  label_j1i2:
    {
      b[i2][j1][0]=i2+(N*j1)+1;
      i2++;
      if (i2<N) goto label_j1i2; 
    }
    j1++;
    if (j1<N) goto  label_j1; 
  }

  printf("a = %d\n", output(a));
  printf("b = %d\n", output(b));

  return 0;
}

void init()
{
  int i,j,k;
  for(k=0;k<N;k++){
    for(j=0;j<N;j++){
      for(i=0;i<N;i++){
	a[i][j][k] = -i;
	b[i][j][k] = -i;
      }
    }
  }
}

int output(int array[N][N][N])
{
  int i,j,k,s=0;
  for(k=0;k<N;k++) {
    for(j=0;j<N;j++) {
      for(i=0;i<N;i++) {
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
