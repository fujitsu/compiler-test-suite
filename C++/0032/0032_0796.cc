#include <stdio.h>
struct X { int a; };

void ff ()
{
  (struct X * (*)(struct X *))2;
}




int main(){
 printf("ok\n");
}
