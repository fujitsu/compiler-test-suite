

#include <stdio.h>
#define N 50
int a[N][N];
int f[N];
void init();
void output();

int main(){
  int i,j,m;

  init();

  j=0;
  do {    
    i=0; m=0;
  label:  
    {
      a[i][j]=i+(N*j)+1;
      if (f[m] == 1) {
	i++;
      }
      m++;
    } if (i<N) goto label;
    j++;
  } while(j<N);

  output();
  return 0;
}

void init()
{
  int i,j;
  for(j=0;j<N;j++){
    for(i=0;i<N;i++){
      a[i][j] = -i;
    }
    f[j] = 1;
  }
}

void output()
{
  int i,j,s=0;
  for(j=0;j<N;j++){
    for(i=0;i<N;i++){
      s = s+a[i][j];
#ifdef DEBUG
      printf("%d ",a[i][j]);
#endif
    }
  }
  printf("s = %d\n",s);
}
