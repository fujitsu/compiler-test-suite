#define loop_n 100
#define master01 3600
#define nn 2

#include <iostream>
#include <stdio.h>
using namespace std;
void sub01(short int a[][nn], short int b[][nn], short int c[][nn], int n) {
  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void sub02(int a[][nn], int b[][nn], int c[][nn], int n) {
  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void sub03(long int a[][nn], long int b[][nn], long int c[][nn], int n) {
  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void sub04(long long int a[][nn], long long int b[][nn], long long int c[][nn],
           int n) {
  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void sub05(float a[][nn], float b[][nn], float c[][nn], int n) {
  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void sub06(double a[][nn], double b[][nn], double c[][nn], int n) {
  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < nn; j++) {
      goto label_start;
    label_loop:;
    }
  }
  return;

label_start:

  a[i][j] = b[i][j] + c[i][j];
  goto label_loop;
}

int main(void) {
  int i, j;
  short int a1[loop_n][nn], b1[loop_n][nn], c1[loop_n][nn];
  int a2[loop_n][nn], b2[loop_n][nn], c2[loop_n][nn];
  long int a3[loop_n][nn], b3[loop_n][nn], c3[loop_n][nn];
  long long int a4[loop_n][nn], b4[loop_n][nn], c4[loop_n][nn];
  float a5[loop_n][nn], b5[loop_n][nn], c5[loop_n][nn];
  double a6[loop_n][nn], b6[loop_n][nn], c6[loop_n][nn];

  int result;

  for (i = 0; i < loop_n; i++) {
    for (j = 0; j < nn; j++) {
      a1[i][j] = 0;
      b1[i][j] = 1;
      c1[i][j] = 2;
      a2[i][j] = 0;
      b2[i][j] = 1;
      c2[i][j] = 2;
      a3[i][j] = 0;
      b3[i][j] = 1;
      c3[i][j] = 2;
      a4[i][j] = 0;
      b4[i][j] = 1;
      c4[i][j] = 2;
      a5[i][j] = 0;
      b5[i][j] = 1;
      c5[i][j] = 2;
      a6[i][j] = 0;
      b6[i][j] = 1;
      c6[i][j] = 2;
    }
  }

  sub01(a1, b1, c1, loop_n);
  sub02(a2, b2, c2, loop_n);
  sub03(a3, b3, c3, loop_n);
  sub04(a4, b4, c4, loop_n);
  sub05(a5, b5, c5, loop_n);
  sub06(a6, b6, c6, loop_n);

  result = 0;

  for (i = 0; i < loop_n; i++) {
    for (j = 0; j < nn; j++) {
      result += a1[i][j] + a2[i][j] + a3[i][j] + a4[i][j] + a5[i][j] + a6[i][j];
    }
  }

  if (result == master01) {
    cout << "ok " << endl;
  } else {
    cout << "ng " << result << endl;
  }

  return 0;
}
