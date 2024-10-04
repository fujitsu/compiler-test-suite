#include <stdio.h>
int main() {
  unsigned long long int a[100];
  unsigned long long int i,j;
  j=0;
  i=100;
  while(i) {
    i--;
    j++;
    a[i]=j;
  }
  if (j==100 && i==0 && a[0]==100) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
