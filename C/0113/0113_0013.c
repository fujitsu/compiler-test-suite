#include <stdio.h>


#define ANS 2
int main()
{
  int a[3];
  int i=1,j=1,k=0;
  int res;

  a[0] = 2;
  a[1] = 1;
  a[2] = 0;

  a[i+j] = a[i+j];
  a[i-j] = a[i-j];
  a[i*j] = a[i*j];
  a[i/j] = a[i/j];
  a[i+j-k] = a[i+j-k];
  a[(i-j)*k] = a[(i-j)*k];
  a[i*j/i] = a[i*j/i];
  a[i/j+i] = a[i/j+i];
  a[i%j+i] = a[i%j+i];
  a[(i%j)*i] = a[(i%j)*i];
  a[k+i] = a[i+j];
  a[i-k] = a[i-j];
  a[i*k] = a[i*j];
  a[k/j] = a[i/j];
  a[i*k/i] = a[i*j/i];
  a[i/j+k] = a[i/j+i];

  

  res = a[0] + a[1] + a[2];

  if (res == ANS) {
    printf("OK\n");
  } else {
    printf("NG");
  }
}
