#include <stdio.h>
#define N 10

void result_check(int *a);
static int result[]={0,1,2,3,4,0,0,0,0,0};
static int iend[]={1,2,3,4,5,6,7,8,9,10};

int main()
{
  int a[N], i, n=9;

  
  for (i=0; i<N; i++) a[i]=0; 

  
  for (i=0; i<iend[9]; i++){
    a[i]=i;
    iend[9]=5;
  }
  result_check(a);

  
  for (i=0; i<iend[n]; i++){
    a[i]=i;
    n=4;
  }
  result_check(a);

  return 0;
}

void result_check(int a[N]) {
  int i;
  for (i=0; i<N; i++) {
    if (a[i] != result[i]) {
      printf("NG %d %d %d\n",i,a[i],result[i]);
      return;
    }
  }
  printf("OK\n");
}
