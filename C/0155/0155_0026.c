#include<stdio.h>
#define MAX 100


void calc(float* data, float* data2, int n) {
  int i;

  for (i = 2; i < MAX; ++i) {
    data[i] = data[i - 2] + data2[i];
  }
}
int main() {
  int i;
  float data[MAX];
  float data2[MAX];

  for (i = 0; i < MAX; ++i) {
    data[i] = (float)i;
    data2[i] = (float)i + 1;
  }

  calc(data, data2, MAX);

  for (i = 0; i < MAX; ++i) {
    printf("%lf ", data[i]);
  }
  printf("\n");
}
