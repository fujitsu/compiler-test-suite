#include<stdio.h>


#define MAX 100

void calc(long int* data, long int* data2, int n) {
  int i;

  for (i = 3; i < MAX; ++i) {
    data[i] = data[i - 3] + data2[i];
  }
}
int main() {
  int i;
  long int data[MAX];
  long int data2[MAX];

  for (i = 0; i < MAX; ++i) {
    data[i] = i;
    data2[i] = i + 1;
  }

  calc(data, data2, MAX);

  for (i = 0; i < MAX; ++i) {
    printf("%ld ", data[i]);
  }
  printf("\n");  
}
