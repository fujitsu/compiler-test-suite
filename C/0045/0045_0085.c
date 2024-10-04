#include <stdio.h>
#include <string.h>

int array[10] ;
const int ans[10] = { 1,2,3,4,5,6,7,8,9,10 };
int main()
{
  int i;
  i=0;
  do {
    array[i] = i+1;
    i++;
  } while( i<10);

  if (memcmp(array, ans, sizeof(int)*10)==0) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
