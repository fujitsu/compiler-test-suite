


#include <stdlib.h>
#include <stdio.h>
#define N 10
int a[N][N][N];
int b[N][N][N];
int c[N][N][N];
int d[N][N][N];
void init();
void output();
int main(){
  int i1,i2,j1,j2,k;

  init();
  k=0;
  while(k<N) {  

    j1=0;
    while(j1<N) {  
      i1=0;
      while(i1<N) {  
	a[i1][j1][k]=i1+(N*j1)+(N*N*k)+1;
	i1++;
      }
      i2=0;
      while(i2<N) {  
	b[i2][j1][k]=i2+(N*j1)+(N*N*k)+1;
	i2++;
      }
      j1++;
    }

    j2=0;
    while(j2<N) {  
      i1=0;
      while(i1<N) {  
	c[i1][j2][k]=i1+(N*j2)+(N*N*k)+1;
	i1++;
      }
      i2=0;
      while(i2<N) {  
	d[i2][j2][k]=i2+(N*j2)+(N*N*k)+1;
	i2++;
      }
      j2++;
    }

    k++;
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
	a[i][j][k] = -i;
	b[i][j][k] = -i;
	c[i][j][k] = -i;
	d[i][j][k] = -i;
      }
    }
  }
}

void output()
{
  int i,j,k;
  for(k=0;k<N;k++){
    for(j=0;j<N;j++){
      for(i=0;i<N;i++){
	if (a[i][j][k] == b[i][j][k] &&
	    c[i][j][k] == d[i][j][k] &&
	    a[i][j][k] == c[i][j][k]){
#ifdef DEBUG 
	  printf("%d ",a[i][j][k]);
#endif	  
	} else {
	  printf("NG\n");
	  exit(1);
	}
      }
    }
  }
#ifdef DEBUG
  printf("\n");
#endif
  printf("OK\n");
}

