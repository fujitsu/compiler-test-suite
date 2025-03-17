#include<stdio.h>
#define MAX 100


int main() {
  int i;
  long int data[MAX], data2[MAX];
 
  for (i = 0; i < MAX; ++i) {
    data[i] = i;
    data2[i] = i * 10;
  }

  for (i = 1; i < MAX; ++i) {
    data[i] = data[i - 1] + data2[i];
  }
  
  for (i = 0; i < MAX; ++i ) {
    printf ("%ld ", data[i]);
  }
  printf("\n");
}
