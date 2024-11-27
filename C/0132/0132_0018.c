#include <stdlib.h>
#include <stdio.h>
int main(){
  long double y;
  y = (long double)5U;
  if(y == 5U)
    printf("OK\n");
  else
    printf("NG\n");
	exit(0);
}
