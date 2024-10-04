


#include <stdio.h>
#define N 10
int a[N][N][N];
void init();
void output();

void foo1()
{
  int m=1;
  int i,j,k;
  int *pk;

  pk = &k;

  init();
  k=0;
  while(k<N) {         
    j=0;
    while(j<N) {       
      i=0;
      while(i<N) {     
	a[i][j][k]=m;
	m++;
	i++;
      }
      *pk = 9;
      j++;
    }
    k++;
  }
  output();
}

void alias(int *k, int **pk){
  *pk = k;
}

void foo2()
{
  int m=1;
  int i,j,k;
  int *pk;

  alias(&k, &pk);
 
  init();
  k=0;
  while(k<N) {         
    j=0;
    while(j<N) {       
      i=0;
      while(i<N) {     
	a[i][j][k]=m;
	m++;
	i++;
      }
      *pk = 9;
      j++;
    }
    k++;
  }
  output();
}

void init()
{
  int i,j,k;
  for(k=0;k<N;k++){
    for(j=0;j<N;j++){
      for(i=0;i<N;i++){
	a[i][j][k] = -1;
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
int main()
{
  foo1();
  foo2();
}

