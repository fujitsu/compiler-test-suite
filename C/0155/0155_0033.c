#include<stdio.h>


#define MAX 100

void calc(double* data, double* data2, int n) {
  int i;

  for (i = 3; i < MAX; ++i) {
    data[i] = data[i - 3] + data2[i];
  }
}
int main() {
  int i;
  double data[MAX];
  double data2[MAX];

  for (i = 0; i < MAX; ++i) {
    data[i] = (double)i;
    data2[i] = (double)i + 1;
  }

  calc(data, data2, MAX);

  for (i = 0; i < MAX; ++i) {
    printf("%f ", data[i]);
  }
  printf("\n");  
}
