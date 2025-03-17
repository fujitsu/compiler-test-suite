#include <stdlib.h>
#include <stdio.h>
#include <math.h>

char *a[]={(char *)((short)0x1234)};
int main(){
  printf(" TEST START\n");
  if((int)a[0] != 0x1234)
    printf(" TEST NG!!!\n");
  printf(" TEST END\n");
exit (0);
}
