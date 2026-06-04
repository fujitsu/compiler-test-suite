#include <stdio.h>

long int zzz;
long int n = 1;

int main() {
  long int x1[10],x2[10],x3[10];
  long int xxx[10];
  long int i,j,k,c=0;
  
  for (i=0; i<10; i++) {
    x1[i] = i;
    x2[i] = i+1;
    x3[i] = i+2;
    xxx[i] = 0;
  }

  for (j=0; j<n; j++) {
    for (i=0; i<n; i++) {
      xxx[1] = x1[i]+x2[i]+x3[i];
      for (k=0; k<n; k++) {
	c++;
      }
    }
  }
  if (xxx[1] == 3) {
    printf("OK\n");
  } else {
    printf("NG %d %d\n",xxx[1],c);
  }
  return 1;
}
