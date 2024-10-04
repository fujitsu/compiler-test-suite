



#include <stdlib.h>
#include <stdio.h>
#define N1  5
#define N2  5
#define N3 10
int a[N1][N2][N3];
int b[N1][N2][N3];
int c[N1][N2][N3];
int d[N1][N2][N3];
void init();
int output(int array[N1][N2][N3]);

void alias(int *x, int **px) {
  *px = x;
}
int main(){
  int i1,i2,j1,j2,k;
  int *pj1,*pj2;

  alias(&j1, &pj1);
  alias(&j2, &pj2);
  init();

  k=0;
  while(k<N3) {  

    j1=0;
    while(j1<N2) {  
      i1=0;
      while(i1<N1) {  
	a[i1][j1][k]=i1+(N1*j1)+(N2*N2*k)+1;
	i1++;
      }
      i2=0;
      while(i2<N1) {  
	*pj1=N2-1;
	b[i2][j1][k]=i2+(N1*j1)+(N2*N2*k)+1;
	i2++;
      }
      j1++;
    }

    j2=0;
    while(j2<N2) {  
      i1=0;
      while(i1<N1) {  
	*pj2=N2-1;
	c[i1][j2][k]=i1+(N1*j2)+(N2*N2*k)+1;
	i1++;
      }
      i2=0;
      while(i2<N1) {  
	d[i2][j2][k]=i2+(N1*j2)+(N2*N2*k)+1;
	i2++;
      }
      j2++;
    }

    k++;
  }

  printf("a = %d\n", output(a));
  printf("b = %d\n", output(b));
  printf("c = %d\n", output(c));
  printf("d = %d\n", output(d));

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
	c[i][j][k] = -i;
	d[i][j][k] = -i;
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
