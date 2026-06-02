#include <stdio.h>

#define IMAX  9
#define JMAX 10

struct xxx {
  int i[IMAX][JMAX];
};

int main(void)
{
  struct xxx a;
  struct xxx b;
  int i,j;

#pragma omp parallel for collapse(2)
  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      a.i[i][j]=1;
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      b.i[i][j]=1;
    }
  }

  for (i=0; i<IMAX; i++) {
    for (j=0;j<JMAX; j++) {
      if (a.i[i][j] != b.i[i][j]) {
        fprintf(stdout, "NG\n");
        return 1; 
      }
    }
  }

  fprintf(stdout, "OK\n");
  return 0;
}
