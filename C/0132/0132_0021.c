#include <stdlib.h>
#include <stdio.h>
int main(){
  long double y;
  y = (long double)(unsigned long long int)5;
  if(y == 5.0)
    printf("OK\n");
  else
    printf("NG\n");
	exit(0);
}
