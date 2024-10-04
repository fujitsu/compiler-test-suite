#include <stdio.h>

int j;
int main(){
  int i,a[2 + 2];
  a[0] = -100;
  a[1] = -200;
  for(i=0; i<100; i++){
    j++;
    if (j==1000) break;
    a[i]=i;
    i=1+1;
  }

  if( a[0] == 0 && a[1] == -200 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
