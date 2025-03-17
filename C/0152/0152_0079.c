

#include <stdio.h>
#include <stdlib.h>
int xx;
void sub(void) {
  xx = 3;
}

#define EXPECTED_VALUE 101
int main() {
  int x=0,j=0,k;
  double v1=100,v2=2,v3=1;

  sub();
  for(k=2;k<xx;k++) {
    for(j=1;j<2;j++) {
      v2=v3;
      if(x<j) {;}

      v3=v1+v2;

      v2 = v3;
    }
  }
  
  if (v2 != EXPECTED_VALUE) {
    printf("ng\n");
  }
  if (v3 != EXPECTED_VALUE) {
    printf("ng\n");
  }
  printf("ok\n");

  return 0;
}
