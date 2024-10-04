#include <stdio.h>
#define N 10

void result_out(int item_no, int a[N][N]);
static int iend[]={1,2,3,4,5,6,7,8,9,10};
int init(void) { return 1; }

int main()
{
  int a[N][N], i, j, n, m;

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      a[i][j]=0;
    }
  }
  n = init();

  
  m=0;
  for (i=0; i<iend[8]+1; i++){
    for (j=0; j<N; j++){
      a[i][j]=m;
      iend[8]=4;
      m=m+1;
    }
  }
  result_out(1,a);

  
  m=0;
  for (i=0; i<iend[8]+n; i++){
    for (j=0; j<N; j++){
      a[i][j]=m;
      iend[8]=4;
      m=m+1;
    }
  }
  result_out(2,a);

  
  m=0;
  for (i=0; i<iend[8]+n; i++){
    for (j=0; j<N; j++){
      a[i][j]=m;
      n=-4;
      m=m+1;
    }
  }
  result_out(3,a);

  return 0;
}

void result_out(int item_no, int a[N][N]) {
  int i, j;
  printf("*** test%d\n",item_no);
  for (i=0; i<N; i++){
    for (j=0; j<N; j++){
      printf("%d ",a[i][j]);
    }
    printf("\n");
  }
}

