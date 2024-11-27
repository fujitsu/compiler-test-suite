#include <stdio.h>
int main()
{
  int a[20][2];
  int b[20][2];
  int list[20]={3,2,1,6,5,4,9,8,7,12,11,10,15,14,13,0,19,18,17,16};
  int i,j;

  for(j=0;j<2;j++) {
    for(i=0;i<20;i++) {
      a[i][j] = 0;
      b[i][j] = i*10+j;
    }
  }
    
  


  for(j=0;j<2;j++) {
    for(i=0;i<20;i++) {
      a[i][j] = -i;
    }
  }
  
  for(i=0;i<20;i++) {
    printf("%d %d %d \n",i,a[i][0],a[i][1]);
  }
  printf("\n");




  for(j=0;j<2;j++) {
    for(i=0;i<20;i+=2) {
      a[i][j] = b[i][j] + 30;
    }
  }
  
  for(i=0;i<20;i++) {
    printf("%d %d %d \n",i,a[i][0],a[i][1]);
  }
  printf("\n");



  for(j=0;j<2;j++) {
    for(i=0;i<20;i+=list[0]) {
      a[i][j] = b[i][j] + 100;
    }
  }
  
  for(i=0;i<20;i++) {
    printf("%d %d %d \n",i,a[i][0],a[i][1]);
  }
  printf("\n");




  for(j=0;j<2;j++) {
    for(i=0;i<20;i++) {
      a[list[i]][j] = -i;
    }
  }
  
  for(i=0;i<20;i++) {
    printf("%d %d %d \n",i,a[i][0],a[i][1]);
  }
  printf("\n");



  for(j=0;j<2;j++) {
    for(i=0;i<20;i+=2) {
      a[list[i]][j] = b[i][j]+30;
    }
  }
  
  for(i=0;i<20;i++) {
    printf("%d %d %d \n",i,a[i][0],a[i][1]);
  }
  printf("\n");



  for(j=0;j<2;j++) {
    for(i=0;i<20;i+=list[0]) {
      a[list[i]][j] = b[i][j]+100;
    }
  }
  
  for(i=0;i<20;i++) {
    printf("%d %d %d \n",i,a[i][0],a[i][1]);
  }
  printf("\n");
}
