#include <stdio.h>
int main(void)
{
  int i,j,a[20];
  j=0;

  for(i=0;i<10;i++) {
    a[j+10]=j;
    j=1-j;
  }
  for(i=0;i<20;i++) {
    if( i==11 && a[i]!=1 ) {
        printf(" ng\n");
        return 0;
    }
  }
  printf(" ok\n");
}
