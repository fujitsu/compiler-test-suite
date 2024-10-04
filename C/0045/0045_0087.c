#include <stdio.h>
#include <string.h>

 int array[10] = { 1,2,3,4,5,6,7,8,9,10 };
const int ans[10] = { 11,22,33,44,55,66,77,88,99,110 };

void foo()
{
  int i;
  i=10;
  while (i>=1) {
    array[i-1] = i*10+i;
    i-=1;
  }
}
int main()
{
  foo();

  if (memcmp(array, ans, sizeof(int)*10)==0) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
