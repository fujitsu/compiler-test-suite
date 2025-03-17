#include <stdio.h>
int main(){
 int i=1;
  switch (i){
    case 1:
     i++; printf("ok\n");
    case 2:
     i--;
    default:
     i=i++;
  }
}

