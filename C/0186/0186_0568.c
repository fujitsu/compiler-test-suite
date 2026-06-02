#include <stdio.h>
int main() {
  struct str_data2 {
    long int zzz;
  };
  struct str_data {
    long int i_data;
    double   r_data;
    struct str_data2 yyy;
  };

  struct str_data xxx[3][3];
  long int i,j,k;
  for (i=0; i<3; i++) {
    for (j=0; j<3; j++) {
      xxx[i][j].i_data = 1;
      xxx[i][j].r_data = 1.0;
      xxx[i][j].yyy.zzz = 1;
    }
  }

  for (k=1; k<3; k++) {
    xxx[1][k] = xxx[0][k-1];
    xxx[2][k].i_data = xxx[1][k-1].i_data + 1;
  }
  
  if (xxx[2][2].i_data == 2) {
    printf("OK\n");
  } else {
    printf("NG %d\n",xxx[2][2].i_data);
  }
  return 1;
}
