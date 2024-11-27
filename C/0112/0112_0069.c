#include <stdio.h>
int main()
{
  double a[20];
  double b[20]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
  signed int list[20]={3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,0,19,18,17,16};
  signed int i;
  
  for(i=0;i<20;i++) {
    a[i] = -i;
  }

  for(i=0;i<20;i++) {
    printf("%f ",a[i]);
  }
  printf("\n");

  for(i=0;i<20;i+=2) {
    a[i] = b[i] + 2;
  }

  for(i=0;i<20;i++) {
    printf("%f ",a[i]);
  }
  printf("\n");

  for(i=0;i<20;i+=list[0]) {
    a[i] = b[i] + 30;
  }

  for(i=0;i<20;i++) {
    printf("%f ",a[i]);
  }
  printf("\n");

  for(i=0;i<20;i++) {
    a[list[i]] = -i;
  }

  for(i=0;i<20;i++) {
    printf("%f ",a[i]);
  }
  printf("\n");

  for(i=0;i<20;i+=2) {
    a[list[i]] = b[i]+100;
  }

  for(i=0;i<20;i++) {
    printf("%f ",a[i]);
  }
  printf("\n");

  for(i=0;i<20;i+=list[0]) {
    a[list[i]] = b[i]+1000;
  }

  for(i=0;i<20;i++) {
    printf("%f ",a[i]);
  }
  printf("\n");
}
