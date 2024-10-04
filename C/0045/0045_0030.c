#include <stdio.h>
static int iend[]={1,2,3,4,5,6,7,8,9,10};
void foo(int *);

int main()
{
  foo(&iend[9]);
  return 0;
}

void foo(int *iend)
{
  int s,i;

  s=0;
  for (i=0; i<*iend; i++){
    s=s+1;
  }

  if (s == 10) {
    printf("OK\n");
  } else {
    printf("NG %d\n",s);
  }
}
