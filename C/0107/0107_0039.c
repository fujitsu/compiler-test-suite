#include <stdio.h>
#include <memory.h>

int *array1[1000] ;
int *array2[1000] ;
int main()
{
  int i;

  memset(array1, -1, sizeof(array1));

  for(i=0;i<1000;i++) {
    array2[i] = array1[i];
  }

  if (array2[0] == (void *)-1 && array2[999] == (void *)-1) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}

