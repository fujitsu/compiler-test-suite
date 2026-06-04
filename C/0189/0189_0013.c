#include <stdio.h>

#define IMAX  9
#define JMAX 10

struct xxx {
  int i;
};

int main(void)
{
  struct xxx a[IMAX][JMAX];
  struct xxx b[IMAX][JMAX];
  int i,j;

#pragma omp parallel for collapse(2)
  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      a[i][j].i=1;
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      b[i][j].i=1;
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      if (a[i][j].i != b[i][j].i) {
        fprintf(stdout, "NG\n");
        return 1; 
      }
    }
  }

  fprintf(stdout, "OK\n");
  return 0;
}
