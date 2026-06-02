#include <stdio.h>
#define SIZE 100

void test1(float * restrict a, float * restrict b, float * restrict c, int REP, int STEP) {
  int temp = 0;

  // reduction
  for (int i = 0; i < 100; i += STEP) {
    a[i] += b[i] + c[i];
    if (i % 5 == 0) temp++;
  }

  // no dependence
  for (int i = 0; i < 100; i += STEP) {
    a[i] = b[i] + c[i];
    if (i % 5 == 0) temp++;
  }

  // flow dependence
  for (int i = 0; i < 100; i += STEP) {
    a[i] = b[i] + 1;
    c[i] = a[i] / 2;
    if (i % 5 == 0) temp++;
  }

  // anti-dependence
  for (int i = 0; i < 100; i += STEP) {
    a[i] = b[i] + 1;
    b[i] = c[i] / 2;
    if (i % 5 == 0) temp++;
  }

  // output dependence
  for (int i = 0; i < 100; i += STEP) {
    a[i] = b[i] + 1;
    a[i] = c[i] / 2;
    if (i % 5 == 0) temp++;
  }

  // loop-carried flow dependence
  for (int i = 1; i < 100; i += STEP) {
    a[i] = a[i-1] + b[i-1] + c[i-1];
    if (i % 5 == 0) temp++;
  }

  // loop-carried anti-dependence
  for (int i = 0; i < 100-1; i += STEP) {
    a[i] = a[i+1] + b[i+1] + c[i+1];
    if (i % 5 == 0) temp++;
  }

  // loop-carried output dependence
  for (int i = 0; i < 100-1; i += STEP) {
    a[i] = b[i] + c[i];
    a[i+1] = b[i] * c[i];
    if (i % 5 == 0) temp++;
  }
}

void test2(float aa[][100], float bb[][100], float cc[][100], int REP1, int REP2, int STEP1, int STEP2) {
  int temp = 0;

  // reduction
  for (int i = 0; i < REP1; i += STEP1) {
    for (int j = 0; j < 100; j += STEP2) {
      aa[i][j] += bb[i][j] + cc[i][j];
      if (j % 5 == 0) temp++;
    }
  }

  // no dependence
  for (int i = 0; i < REP1; i += STEP1) {
    for (int j = 0; j < 100; j += STEP2) {
      aa[i][j] = bb[i][j] + cc[i][j];
      if (j % 5 == 0) temp++;
    }
  }

  // flow dependence
  for (int i = 0; i < REP1; i += STEP1) {
    for (int j = 0; j < 100; j += STEP2) {
      aa[i][j] = bb[i][j] + 1;
      cc[i][j] = aa[i][j] / 2;
      if (j % 5 == 0) temp++;
    }
  }

  // anti-dependence
  for (int i = 0; i < REP1; i += STEP1) {
    for (int j = 0; j < 100; j += STEP2) {
      aa[i][j] = bb[i][j] + 1;
      bb[i][j] = cc[i][j] / 2;
      if (j % 5 == 0) temp++;
    }
  }

  // output dependence
  for (int i = 0; i < REP1; i += STEP1) {
    for (int j = 0; j < 100; j += STEP2) {
      aa[i][j] = bb[i][j] + 1;
      aa[i][j] = cc[i][j] / 2;
      if (j % 5 == 0) temp++;
    }
  }

  // loop-carried flow dependence
  for (int i = 1; i < REP1; i += STEP1) {
    for (int j = 1; j < 100; j += STEP2) {
      aa[i][j] = aa[i][j-1] + bb[i-1][j] + cc[i-1][j-1];
      if (j % 5 == 0) temp++;
    }
  }

  // loop-carried anti-dependence
  for (int i = 0; i < REP1-1; i += STEP1) {
    for (int j = 0; j < 100-1; j += STEP2) {
      aa[i][j] = aa[i][j+1] + bb[i+1][j] + cc[i+1][j+1];
      if (j % 5 == 0) temp++;
    }
  }

  // loop-carried output dependence
  for (int i = 0; i < REP1-1; i += STEP1) {
    for (int j = 0; j < 100-1; j += STEP2) {
      aa[i][j] = bb[i][j] + cc[i][j];
      aa[i][j+1] = bb[i][j] * cc[i][j];
      if (j % 5 == 0) temp++;
    }
  }
}

int main() {
  float a[SIZE], b[SIZE], c[SIZE];
  float aa[SIZE][SIZE], bb[SIZE][SIZE], cc[SIZE][SIZE];
  for (int i = 0; i < SIZE; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = -2*i;
    for (int j = 0; j < SIZE; j++) {
      aa[i][j] = 0;
      bb[i][j] = i + j;
      cc[i][j] = i - 2*j;
    }
  }

  test1(a, b, c, SIZE, 3);

  for (int i = 0; i < SIZE; i++)
    printf("%f, ", a[i]);
  puts("");
  for (int i = 0; i < SIZE; i++)
    printf("%f, ", b[i]);
  puts("");
  for (int i = 0; i < SIZE; i++)
    printf("%f, ", c[i]);
  puts("");

  test2(aa, bb, cc, SIZE, SIZE, 3, 4);

  for (int i = 0; i < SIZE; i++)
    for (int j = 0; j < SIZE; j++)
      printf("%f, ", aa[i][j]);
  puts("");
  for (int i = 0; i < SIZE; i++)
    for (int j = 0; j < SIZE; j++)
      printf("%f, ", bb[i][j]);
  puts("");
  for (int i = 0; i < SIZE; i++)
    for (int j = 0; j < SIZE; j++)
      printf("%f, ", cc[i][j]);
  puts("");

  return 0;
}
