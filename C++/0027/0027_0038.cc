#define loop_n 100
#define nn 2
#define master01 3296

#include <iostream>
#include <stdio.h>
using namespace std;
void sub00(float *a, float *b, float *c, int n) {
  int i;

  for (i = 0; i < n; i++) {
    a[i] = 2;
    b[i] = i;
    c[i] = i * 2;
  }
}

void sub01(float *a, float *b, float *c, float d[][nn], int n) {
  int i, j;

  for (i = 0; i < nn; i++) {
    for (j = 0; j < nn; j++) {
      d[i][j] = a[i] + b[i] * c[i];
    }
  }
  return;
}

void sub02(float *a, float d[][nn], float e[][nn][nn], int n) {
  int i, j, k;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      for (k = 0; k < nn; k++) {
        e[i][j][k] = d[i][j] + a[i];
      }
    }
  }
}

void sub03(float e[][nn][nn], float f[][nn][nn][nn][nn], int n) {
  int i, j, k, l, m;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      for (k = 0; k < nn; k++) {
        for (l = 0; l < nn; l++) {
          for (m = 0; m < nn; m++) {
            f[i][j][k][l][m] += e[i][j][k];
          }
        }
      }
    }
  }
}

int main(void) {
  int i, j, k, l, m;
  float a[loop_n];
  float b[loop_n];
  float c[loop_n];
  float d[loop_n][nn];
  float e[loop_n][nn][nn];
  float f[loop_n][nn][nn][nn][nn];
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
