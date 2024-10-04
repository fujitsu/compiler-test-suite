


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
 label_k:
  {
    j1=0;
 label_j1:
    {
      i1=0;
 label_j1j1:
      {
	a[i1][j1][k]=i1+(N*j1)+(N*N*k)+1;
	i1++;
	if (i1<N) goto label_j1j1; 
      }
      i2=0;
 label_j1i2:
      {
	b[i2][j1][k]=i2+(N*j1)+(N*N*k)+1;
	i2++;
	if (i2<N) goto label_j1i2; 
      }
      j1++;
      if (j1<N) goto  label_j1; 
    }

    j2=0;
 label_j2:
    {
      i1=0;
 label_j2i1:
      {
	c[i1][j2][k]=i1+(N*j2)+(N*N*k)+1;
	i1++;
	if (i1<N) goto  label_j2i1;  
      }
      i2=0;
 label_j2i2: 
      {
	d[i2][j2][k]=i2+(N*j2)+(N*N*k)+1;
	i2++;
	if (i2<N) goto label_j2i2; 
      }
      j2++;
      if (j2<N) goto label_j2; 
    }

    k++;
    if (k<N) goto label_k; 
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

