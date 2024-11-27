#include <stdio.h>
#define L 5
#define N 10
#define M 15

void sub(char *from, char *to, int len) {
  int i;
  while (len--) {
    *to++ = *from++;
  }
}

void init_array(char array[], int len) {
  int i;
  for (i=0; i<len; i++) {
    array[i] = (char)i;
  }
}

void print_array(char array[], int len) {
  int i;
  for (i=0; i<len; i++) {
    printf("%d ", (int)array[i]);
  }
  printf("\n");
}
int main() {
  char array[M];
  init_array(array,M);
  sub(&array[0],&array[L],N);
  print_array(array,M);
}
