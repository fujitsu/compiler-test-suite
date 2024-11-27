#include <stdio.h>
#include <memory.h>

int *array[1000] ;
int  target;
int main()
{
  int i;

  memset(array, -1, sizeof(array));

  for(i=0;i<1000;i++) {
    array[i] = 0;
  }

  if (array[0] == 0 && array[999] == 0) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}

