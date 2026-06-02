#include <stdio.h>

int a[20], b[20], M=1;
 int sub(int *a){};
int main() {
  int i;
  sub(a);
  for (i=0; i<10; i++) {
    a[i] = a[i+M] + b[i];
  }
  printf("  ok \n");
}

