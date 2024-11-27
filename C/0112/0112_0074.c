#include <stdio.h>
int main()
{
  long long int a[20][2];
  long long int b[20]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
  int list[20]={3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,0,19,18,17,16};
  int i;
  
  for(i=0;i<20;i++) {
    a[i][0] = i;
    a[i][1] = i+100;
  }

  for(i=0;i<20;i++) {
    printf("%lld %lld \n",a[i][0],a[i][1]);
  }
  printf("\n");

  for(i=0;i<20;i+=2) {
    a[i][0] = b[i] + 30;
    a[i][1] = b[i] + 1;
  }

  for(i=0;i<20;i++) {
    printf("%lld %lld \n",a[i][0],a[i][1]);
  }
  printf("\n");

  for(i=0;i<20;i+=list[0]) {
    a[i][0] = b[i] + 100;
    a[i][1] = b[i] + 2;
  }

  for(i=0;i<20;i++) {
    printf("%lld %lld \n",a[i][0],a[i][1]);
  }
  printf("\n");

  for(i=0;i<20;i++) {
    a[list[i]][0] = i;
    a[list[i]][1] = i+100;
  }

  for(i=0;i<20;i++) {
    printf("%lld %lld \n",a[i][0],a[i][1]);
  }
  printf("\n");

  for(i=0;i<20;i+=2) {
    a[list[i]][0] = b[i]+30;
    a[list[i]][1] = b[i]-40;
  }

  for(i=0;i<20;i++) {
    printf("%lld %lld \n",a[i][0],a[i][1]);
  }
  printf("\n");


  for(i=0;i<20;i+=list[0]) {
    a[list[i]][0] = b[i] + 2;
    a[list[i]][1] = b[i] - 4;
  }

  for(i=0;i<20;i++) {
    printf("%lld %lld \n",a[i][0],a[i][1]);
  }
  printf("\n");

}
