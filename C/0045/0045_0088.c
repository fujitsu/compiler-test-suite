

#include <stdio.h>
#include <string.h>

int i,n=10;

int array[10];
const int ans[10] = { 0,1,2,3,4,5,6,7,8,9 };

int foo()
{
  for(i=0;i<n;i++) {
    array[i] = i;
  }
}
int main()
{
  foo();

  if (memcmp(array, ans, sizeof(int)*10)==0) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}



