#include <stdio.h>


#define ANS 1
int main()
{
  int a[2],b[2];
  int i=1,j=1,k=0;

  a[0] = 0;
  a[1] = 1;
  b[0] = 0;
  b[1] = 1;

  a[0] = a[0];
  a[1] = a[1];

  a[i] = a[i];
  a[i] = a[j];

  a[i+k] = a[i+k];
  a[i+k] = a[j+k];

  a[b[0]] = a[b[0]];
  a[b[0]] = a[b[1]];



  if (a[0] == ANS) {
    printf("OK\n");
  } else {
    printf("NG");
  }
}
