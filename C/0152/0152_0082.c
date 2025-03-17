

#include <stdio.h>
#include <stdlib.h>
int xx;
void sub(void) {
  xx = 3;
}

#define EXPECTED_VALUE 3
int main() {
  int x=0,j=0,k;
  unsigned int v1=100,v2=2;
  unsigned int v3[2];

  sub();
  for(k=2;k<xx;k++) {
    for(j=1;j<2;j++) {
      v2=1;
      v3[j]=2;
      if(x<j) {;}

      v1=v2+v3[j];

      v3[j] = j;
    }
  }
  
  if (v1 != EXPECTED_VALUE) {
    printf("ng\n");
  }
  printf("ok\n");

  return 0;
}
