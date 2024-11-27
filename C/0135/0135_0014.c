#include <stdlib.h>
#include <string.h>


#include <stdio.h>
#include <math.h>

int main()
{
  int        i,j,n=0,m=0;
  int        a[10000],b[10];
  char       chara1[10000],chara2[10]={'a','b','c','d','e','f','g','h','i','j'};

  memset(chara1,' ',10000);
  for(i=0;i<10000;i++) a[i]=0;

  for(j=0;j<10;j++) {
    b[j]=j;
    for(i=0;i<10;i++) {
      a[i]+=(i+j);
      chara1[n]=chara2[i/1001];
      n+=1;
    }
    n=1;
    for(i=5000;i<10000;i++) {
      a[j]=a[m]+j;
      a[m]=a[i/(m+1)]+n+m+a[m];
    }
  }
    
  printf("##  ##\n");
  for(i=0;i<10000;i+=100) printf("%c ",chara1[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",b[i]);
  printf("\n");
  for(i=0;i<10000;i+=100) printf("%d ",a[i]);
  printf("\n");
  exit(0);
}
