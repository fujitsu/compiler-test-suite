#define loop_n 100
#define nn 2
#define master01 236000

#include <iostream>
#include <stdio.h>
using namespace std;
void sub00(double *a, double *b, double *c, int n) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 1;
    b[i] = i;
    c[i] = i * 2;
  }
}

void sub01(double *a, double *b, double *c, double d[][nn], int n) {
  int i, j;
  double x[nn];

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      d[i][j] = a[i] * b[i] + c[i];
      x[j] = b[i];
    }
  }
  return;
}

void sub02(double *a, double d[][nn], double e[][nn][nn], int n) {
  int i, j, k;
  double x[nn];

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      for (k = 0; k < nn; k++) {
        e[i][j][k] = d[i][j] - a[i];
        x[k] = a[i];
      }
    }
  }
}

void sub03(double e[][nn][nn], double f[][nn][nn][nn][nn], int n) {
  int i, j, k, l, m;
  double x[nn];

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      for (k = 0; k < nn; k++) {
        for (l = 0; l < nn; l++) {
          for (m = 0; m < nn; m++) {
            f[i][j][k][l][m] = e[i][j][k];
            x[m] = e[i][j][k];
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

  sub00(a, b, c, loop_n);
  sub01(a, b, c, d, loop_n);
  sub02(a, d, e, loop_n);
  sub03(e, f, loop_n);

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

  if (result == master01) {
    cout << "ok " << endl;
  } else {
    cout << "ng " << result << endl;
  }

  return 0;
}
