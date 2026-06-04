#include <stdio.h>
int main() {
  union union_data {
    long int i8_data;
    int      i4_data[2];
  };
  
  union union_data xxx[3][3];
  long int i,j,k;

  for (i=0; i<3; i++) {
    for (j=0; j<3; j++) {
      xxx[i][j].i4_data[0] = 1;
      xxx[i][j].i4_data[1] = 1;
    }
  }

  for (k=1; k<3; k++) {
    xxx[1][k] = xxx[0][k-1];
    xxx[2][k].i4_data[1] = xxx[1][k-1].i4_data[1] + 1;
  }
  
  if (xxx[2][2].i4_data[1] == 2) {
    printf("OK\n");
  } else {
    printf("NG %d\n",xxx[2][2].i4_data[1]);
  }
  return 1;
}
