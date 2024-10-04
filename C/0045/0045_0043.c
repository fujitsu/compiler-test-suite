

#include <stdio.h>
#define N 10
int a[N][N][N];
void init();
void output();
int main(){

  int m=1;
  int i,j,k;

  init();
  k=0;
  loop1_top:
  {
    j=0;
  loop2_top:
    {
      i=0;
    loop3_top:
      {
	a[i][j][k]=m;
	m++;
	i++;
	if (i<N) goto loop3_top;  
      }
      j++;
      if (j<N) goto loop2_top;    
    }
    k++;
    if (k<N) goto loop1_top;      
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
