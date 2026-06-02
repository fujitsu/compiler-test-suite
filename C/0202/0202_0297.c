#include <stdio.h>
void sub1() {};
void sub2() {};
void sub3() {};

int m1 = 10;
int m2 = 10;
int main() {
  int i, j;
  int a[20][20], b[20][20], c[20][20];

  sub1();
  sub2();
  sub3();

  for (i=0; i<m1; i++) {
    for (j=0; j<m2; j++) {
      a[j][i]=a[j][i]+b[i][j]+c[i][j];
    }
  }
  printf("  ok \n");
}

