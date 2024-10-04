#include <stdio.h>
#define N 10

void result_check(int *a);
static int result[]={0,1,2,3,4,5,6,7,8,9};
static int iend[]={1,2,3,4,5,6,7,8,9,10};
int init(void) { return 1; }

int main()
{
  int a[N], i, n;

  for (i=0; i<N; i++) a[i]=0;
  n = init();

  
  for (i=0; i<iend[8]+1; i++){
    a[i]=i;
  }
  result_check(a);

  
  for (i=0; i<iend[8]+n; i++){
    a[i]=i;
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

