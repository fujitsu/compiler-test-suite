#include <stdio.h>
void sub(int a){
  int i;
  for(i=a,a++;i<a;i++)
    printf("ok\n");
}
int main(){sub(1);}
