#include <stdio.h>

void sub (int *a)
{
}
int main()
{
  int a[100][100][100], b[100][100];
  int c[100][100][100];
  int j, i, l=50;
  for(j=0; j<10; j++){
    for(i=0; i<10; i++){
      a[j][l][i] = c[j][l][i] + b[j][i];
    }
  }
  for(j=0; j<10; j++){
    for(i=0; i<10; i++){
      a[j][l][i] = c[j][l][i] + b[j][i];
    }
  }
  for(j=0; j<10; j++){
    for(i=0; i<10; i++){
      a[j][l][i] = c[j][l][i] + b[j][i];
    }
  }
  for(j=0; j<10; j++){
    for(i=0; i<10; i++){
      a[j][l][i] = c[j][l][i] + b[j][i];
    }
  }
  sub(a[0][0]);
  printf("  ok \n");
}

