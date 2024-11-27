#include  <stdio.h>

int main() {
int a=0,b,i;
printf("***  test start ***\n");
  for(i=0;++i;a++,b++) {
    b=a;
    break;
  }
  if(b!=0) printf("test error\n");
  else     printf("test is ok\n");
printf("***  test ended ***\n");
}
