#include <stdio.h>
#include <string.h>

int array[10];
const int ans[10] = { 0,1,2,3,4,5,6,7,8,9 };
int main()
{
  int j;
#pragma omp parallel for 
  for(j=0;j<10;j++) {
    array[j] = j;
  }

  if(memcmp(ans, array, sizeof(int)*10) == 0 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
