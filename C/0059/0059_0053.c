
#include <stdio.h>
#include <stdlib.h>

int vold=1234;
int vnew=4321;

extern int vold;
int main() {
  if (vold==1234) printf("vnew=%d OK \n",vold);
  else            printf("vnew=%d NG \n",vold);
  return 0;
}
