#include <stdio.h>

long int zzz;
long int n = 1;

int main() {
  long int x1[10],x2[10],x3[10];
  long int xxx[10];
  long int i,j;
  
  for (i=0; i<10; i++) {
    x1[i] = i;
    x2[i] = i+1;
    x3[i] = i+2;
    xxx[i] = 0;
  }

  for (j=0; j<n; j++) {
    for (i=0; i<10; i++) {
      xxx[i] = x1[i]+x2[i]+x3[i];
    }
  }
  if (xxx[1] == 6) {
    printf("OK\n");
  } else {
    printf("NG %d\n",xxx[1]);
  }
  return 1;
}
