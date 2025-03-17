#define loop_n 100
#define nn 2
#define master01 236016

#include <iostream>
#include <stdio.h>
using namespace std;
void sub00(double *a, double *b, double *c, int n, int *xx, int *yy, int *zz) {
  int i;

  for (i = 0; i < n; i++) {
    *xx = *yy + *zz;
    a[i] = 1;
    b[i] = i;
    c[i] = i * 2;
  }
}

void sub01(double *a, double *b, double *c, double d[][nn], int n, int *xx,
           int *yy, int *zz) {
  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      *zz = *xx + *yy;
      d[i][j] = a[i] * b[i] + c[i];
    }
  }
  return;
}

void sub02(double *a, double d[][nn], double e[][nn][nn], int n, int *xx,
           int *yy, int *zz) {
  int i, j, k;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      for (k = 0; k < nn; k++) {
        *xx = *zz + *yy;
        e[i][j][k] = d[i][j] - a[i];
      }
    }
  }
}

void sub03(double e[][nn][nn], double f[][nn][nn][nn][nn], int n, int *xx,
           int *yy, int *zz) {
  int i, j, k, l, m;

  for (i = 0; i < n; i++) {
    *yy = *zz + *xx;
    for (j = 0; j < nn; j++) {
      for (k = 0; k < nn; k++) {
        for (l = 0; l < nn; l++) {
          for (m = 0; m < nn; m++) {
            f[i][j][k][l][m] = e[i][j][k];
          }
        }
      }
    }
  }
}

int main(void) {
  int i, j, k, l, m;
  double a[loop_n];
  double b[loop_n];
  double c[loop_n];
  double d[loop_n][nn];
  double e[loop_n][nn][nn];
  double f[loop_n][nn][nn][nn][nn];
  int xx, yy, zz;
  int result;

  for (i = 0; i < loop_n; i++) {
    for (j = 0; j < nn; j++) {
      d[i][j] = 0;
      for (k = 0; k < nn; k++) {
        e[i][j][k] = 0;
        for (l = 0; l < nn; l++) {
          for (m = 0; m < nn; m++) {
            f[i][j][k][l][m] = 0;
          }
        }
      }
    }
  }

  xx = 1;
  yy = 2;
  zz = 3;

  sub00(a, b, c, loop_n, &xx, &yy, &zz);
  sub01(a, b, c, d, loop_n, &xx, &yy, &zz);
  sub02(a, d, e, loop_n, &xx, &yy, &zz);
  sub03(e, f, loop_n, &xx, &yy, &zz);

  result = 0;
  for (i = 0; i < loop_n; i++) {
    for (j = 0; j < nn; j++) {
      for (k = 0; k < nn; k++) {
        for (l = 0; l < nn; l++) {
          for (m = 0; m < nn; m++) {
            result += f[i][j][k][l][m];
          }
        }
      }
    }
  }
  result += yy;

  if (result == master01) {
    cout << "ok " << endl;
  } else {
    cout << "ng " << result << endl;
  }

  return 0;
}
