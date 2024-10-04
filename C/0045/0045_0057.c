#include <stdio.h>
#define N 10
int a[N][N][N];
void init();
void output();

int main(){
  int i,j,k;

  init();
#pragma omp parallel for
  for(k=0;k<N;k++) {
    for(j=0;j<N;j++) {
      for(i=0;i<N;i++) {
	a[i][j][k]=i+(N*j)+(N*N*k)+1;
      }
    }
  }
  output();
  return 0;
}

void init()
{
  int i,j,k;
  for(k=0;k<N;k++){
    for(j=0;j<N;j++){
      for(i=0;i<N;i++){
	a[i][j][k] = 0;
      }
    }
  }
}

void output()
{
  int i,j,k,s=0;
  for(k=0;k<N;k++){
    for(j=0;j<N;j++){
      for(i=0;i<N;i++){
	s = s+a[i][j][k];
#ifdef DEBUG
	printf("%d ",a[i][j][k]);
#endif
      }
    }
  }
  printf("s = %d\n",s);
}
