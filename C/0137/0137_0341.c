#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main() {
  int f[1], i = 2;
  
  f[0] = 1;
  
  if (i >= 1)
    do {
      ++f[0];
      --i;
    } while (i >= 1);
  
  if (f[0] != 3) 
    printf("NG\n");
  else
    printf("OK\n");
exit (0);
}
