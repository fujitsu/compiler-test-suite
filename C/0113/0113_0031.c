#include <stdio.h>
#define N 10

void sub(char *from, char *to, int len) {
  int i;
  while (--len) {
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
  char from[N],to[N];
  init_array(from,N);
  sub(from,to,N+1);
  print_array(to,N);
}
