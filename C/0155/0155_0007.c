#include<stdio.h>


#define MAX 10
int main() {
  int i;
  int data[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
  
  for (i = 1; i < MAX; ++i ) {
    data[i] = data[i - 1] + 2;
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%d ", data[i]);
  }
  printf("\n");

}
