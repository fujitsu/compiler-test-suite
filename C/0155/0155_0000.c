#include<stdio.h>


#define MAX 10
int main() {
  int i;
  long int data[] = { 111l, 222l, 333l, 444l, 555l, 666l, 777l, 888l, 999l, 10000l };
  
  for (i = 1; i < MAX; ++i ) {
    data[i] = data[i - 1] + 2;
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%ld ", data[i]);
  }
  printf("\n");

}
