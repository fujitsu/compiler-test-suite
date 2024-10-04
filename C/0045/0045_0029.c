#include <stdio.h>
#define N 10

static int iend[]={1,2,3,4,5,6,7,8,9,10};
void foo(int *, int *);

int main()
{
  foo(&iend[9], &iend[9]);
  return 0;
}

void foo(int *iend, int *p)
{
  int s,i;

  
  s=0;
  for (i=0; i<*iend; i++){
    s=s+1;
    *p=5;
  }

  if (s == 5) {
    printf("OK\n");
  } else {
    printf("NG %d\n",s);
  }
}
