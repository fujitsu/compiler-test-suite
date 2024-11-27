#include <stdio.h>
#define N 10

void sub(char from[], char to[], int len) {
  int i;
  for (i=len-1; i>=0; i--) {
    to[i] = from[i];
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
  char from[N],to[N];
  init_array(from,N);
  sub(from,to,N);
  print_array(to,N);
}
