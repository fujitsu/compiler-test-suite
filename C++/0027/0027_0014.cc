#include <iostream>

using namespace std;
#define I_ARRAY_MAX 10
#define J_ARRAY_MAX 10

void dist_func_double(double double_A[10][10], double double_B[10][10], double double_C[10][10], int m, int n, int l);
void dist_func_int(int int_A[10][10], int int_B[10][10], int int_C[10][10], int m, int n, int l);
int main() {
  double double_A[I_ARRAY_MAX][J_ARRAY_MAX];
  double double_B[I_ARRAY_MAX][J_ARRAY_MAX];
  double double_C[I_ARRAY_MAX][J_ARRAY_MAX];
  double double_result = 0;
  int int_A[I_ARRAY_MAX][J_ARRAY_MAX];
  int int_B[I_ARRAY_MAX][J_ARRAY_MAX];
  int int_C[I_ARRAY_MAX][J_ARRAY_MAX];
  int int_result = 0;
  int i, j;
  for (i = 0; i < I_ARRAY_MAX; ++i) {
    for (j = 0; j < J_ARRAY_MAX; ++j) {
      double_A[j][i] = i * 2;
      double_B[j][i] = i * 3;
      double_C[j][i] = i * 4;
      int_A[j][i] = i * 5;
      int_B[j][i] = i * 6;
      int_C[j][i] = i * 7;
    }
  }
  dist_func_double(double_A, double_B, double_C, 10, 10, 10);
  dist_func_int(int_A, int_B, int_C, 10, 10, 10);
  for (i = 0; i < I_ARRAY_MAX; ++i) {
    for (j = 0; j < J_ARRAY_MAX; ++j) {
      double_result += double_A[j][i];
      int_result += int_A[j][i];
    }
  }
  if (double_result == 3150) {
    cout << "ok " << double_result << endl;
  } else {
    cout << "ng " << double_result << endl;
  }
  if (int_result == 5850) {
    cout << "ok " << int_result << endl;
  } else {
    cout << "ng " << int_result << endl;
  }
}

void dist_func_double(double double_A[10][10], double double_B[10][10], double double_C[10][10], int m, int n, int l) {
  int i, j, k;
  for (i = 0; i < m; ++i) {
    for (j = 0; j < n; ++j) {
      for (k = 0; k < l; ++k) {
        double_A[j][k] = double_C[k][j] + double_A[k][j] * double_B[j][k];

        double_A[j][k] = double_C[k][j] + double_A[k][j];

        double_A[j][k] = double_C[k][j] + double_B[j][k];
      }
    }
  }
}
void dist_func_int(int int_A[10][10], int int_B[10][10], int int_C[10][10], int m, int n, int l) {
  int i, j, k;
  for (i = 0; i < m; ++i) {
    for (j = 0; j < n; ++j) {
      for (k = 0; k < l; ++k) {
        int_A[j][k] = int_C[k][j] + int_A[k][j] * int_B[j][k];

        int_A[j][k] = int_C[k][j] + int_A[k][j];

        int_A[j][k] = int_C[k][j] + int_B[j][k];
      }
    }
  }
}
