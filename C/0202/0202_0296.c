#include <stdio.h>


#define  NUM  100
int a[20], b[20], c[20], d[20], M=5;
int sub(int *a) {};
int main() {
  int i;
  sub(a);
  for (i=0; i<10; i++) {
    a[i] = a[i+M] + b[i];
  }
  sub(a);
  for (i=0; i<10; i++) {
    a[i] = a[i+M] + b[i];
  }
  sub(a);
  for (i=0; i<10; i++) {
    a[i] = a[i+M] + b[i];
  }
  sub(a);
  for (i=0; i<10; i++) {
    a[i] = a[i+M] + b[i];
  }
  printf("  ok \n");
}

