#include <stdio.h>
int main() {
  double xxx[3][3] = {1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0};
  long int j,k;
  long int n = 2;
  for (j=0; j<n; j++) {
    for (k=1; k<3; k++) {
      xxx[1][k] = xxx[0][k-1] + 1;
      xxx[2][k] = xxx[1][k-1] + 1;
    }
  }
  
  if (xxx[2][2] == 3) {
    printf("OK\n");
  } else {
    printf("NG %d\n",xxx[2][2]);
  }
  return 1;
}
