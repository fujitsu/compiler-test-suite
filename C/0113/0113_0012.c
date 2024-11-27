#include <stdio.h>


#define ANS 0
int main()
{
  int a[2];
  int i=1,j=1,k=0,f=0;

  a[0] = 0;
  a[1] = 1;

  a[i] = a[i=j];
  a[i] = a[j=k];

  a[i] = a[i=i+k];
  a[j] = a[j=j+k];

  a[i+k] = a[i=i+k];
  a[i+k] = a[j=j+k];

  a[i=0] = a[i=1];
  a[j=1] = a[j=0];

  a[i=(j=1)-f] = a[i=(j=1)+k];
  a[j=(i=1)-f] = a[j=(i=1)+k];



  if (a[0] == ANS) {
    printf("OK\n");
  } else {
    printf("NG");
  }
}
