#include <stdio.h>
#include <memory.h>

int *array1[1000] ;
int *array2[1000] ;
int  res[1000];

static void init(void)
{
  array1[0] = (void *)100;
  array1[1] = (void *)100;
  array1[2] = (void *)100;
  array2[0] = (void *)0;
  array2[1] = (void *)100;
  array2[2] = (void *)200;
}
int main()
{
  int i;

  init();

  for(i=0;i<1000;i++) {
    res[i] = array1[i] < array2[i] ? 10 : 20;
  }

  
  if (res[0] == 20 && res[1] == 20 && res[2] == 10) {
    puts("OK");
  }
  else {
    printf("NG %d %d %d\n", res[0], res[1], res[2]);
  }
}

