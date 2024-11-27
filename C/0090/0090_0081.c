#include<stdio.h>
#include<math.h>
void inita(int n)
{
  int i,j;
  double a[n][n], c;
  for(i = 0; i < n; ++i) {
    for(j = 0; j < i; ++j) {
      a[i][j] = sin((double)(i*j));
    }
  }
  c = 0.0;
  for(i = 0; i < n; ++i) {
    for(j = 0; j < i; ++j) {
      c += a[i][j];
    }
  }
  if ((int) c == 10) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

int main()
{
  inita(20);
}
